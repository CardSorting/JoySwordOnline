import os
import sys
import boto3
from botocore.client import Config

# R2 configuration from .env credentials
access_key_id = "71adc09e1c1e61753320d4ea55ee9843"
secret_access_key = "f535d48c3d3f5af36458c2b695d65cca2480e83bd35a567a89ccfe7cdb742028"
endpoint_url = "https://33f8b2564698c222880cbad3e42decad.r2.cloudflarestorage.com"
bucket_name = "joysword-manifest"
file_path = "build/downloads/1.0.0/JoySword-Client-1.0.0-windows-x64.zip"
object_key = "releases/1.0.0/JoySword-Client-1.0.0-windows-x64.zip"

print(f"Connecting to R2 endpoint: {endpoint_url}")
s3 = boto3.client(
    service_name='s3',
    endpoint_url=endpoint_url,
    aws_access_key_id=access_key_id,
    aws_secret_access_key=secret_access_key,
    config=Config(signature_version='s3v4'),
)

print(f"Uploading {file_path} to bucket '{bucket_name}'...")

class ProgressPercentage(object):
    def __init__(self, filename):
        self._filename = filename
        self._size = float(os.path.getsize(filename))
        self._seen_so_far = 0

    def __call__(self, bytes_amount):
        self._seen_so_far += bytes_amount
        percentage = (self._seen_so_far / self._size) * 100
        sys.stdout.write(
            "\r%s  %d / %d bytes  (%.2f%%)" % (
                self._filename, self._seen_so_far, self._size,
                percentage))
        sys.stdout.flush()

try:
    s3.upload_file(
        Filename=file_path,
        Bucket=bucket_name,
        Key=object_key,
        Callback=ProgressPercentage(file_path),
        ExtraArgs={
            'ContentType': 'application/zip',
            'ContentDisposition': 'attachment; filename="JoySword-Client-1.0.0-windows-x64.zip"'
        }
    )
    print("\nUpload completed successfully!")
except Exception as e:
    print(f"\nUpload failed: {e}")
    sys.exit(1)
