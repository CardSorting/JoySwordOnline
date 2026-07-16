import os
import sys
import boto3
from botocore.client import Config

access_key_id = "71adc09e1c1e61753320d4ea55ee9843"
secret_access_key = "f535d48c3d3f5af36458c2b695d65cca2480e83bd35a567a89ccfe7cdb742028"
endpoint_url = "https://33f8b2564698c222880cbad3e42decad.r2.cloudflarestorage.com"
bucket_name = "joysword-manifest"

version = "1.3.0"

files_to_upload = [
    {
        "file_path": f"build/downloads/{version}/JoySword-Client-{version}-windows-x64.zip",
        "object_key": f"releases/{version}/JoySword-Client-{version}-windows-x64.zip",
        "content_type": "application/zip",
        "content_disposition": f'attachment; filename="JoySword-Client-{version}-windows-x64.zip"'
    },
    {
        "file_path": f"build/downloads/{version}/JoySword-Launcher-Setup-{version}-x64.exe",
        "object_key": f"releases/{version}/JoySword-Launcher-Setup-{version}-x64.exe",
        "content_type": "application/octet-stream",
        "content_disposition": f'attachment; filename="JoySword-Launcher-Setup-{version}-x64.exe"'
    },
    {
        "file_path": "build/downloads/latest.json",
        "object_key": "latest.json",
        "content_type": "application/json",
        "cache_control": "no-cache, max-age=0"
    }
]

print(f"Connecting to R2 endpoint: {endpoint_url}")
s3 = boto3.client(
    service_name='s3',
    endpoint_url=endpoint_url,
    aws_access_key_id=access_key_id,
    aws_secret_access_key=secret_access_key,
    config=Config(signature_version='s3v4'),
)

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

for upload in files_to_upload:
    file_path = upload["file_path"]
    object_key = upload["object_key"]
    print(f"\nUploading {file_path} to bucket '{bucket_name}' key '{object_key}'...")
    
    extra_args = {
        'ContentType': upload["content_type"]
    }
    if "content_disposition" in upload:
        extra_args['ContentDisposition'] = upload["content_disposition"]
    if "cache_control" in upload:
        extra_args['CacheControl'] = upload["cache_control"]
        
    try:
        s3.upload_file(
            Filename=file_path,
            Bucket=bucket_name,
            Key=object_key,
            Callback=ProgressPercentage(file_path),
            ExtraArgs=extra_args
        )
        print(f"\nUpload of {file_path} completed successfully!")
    except Exception as e:
        print(f"\nUpload of {file_path} failed: {e}")
        sys.exit(1)

print("\nAll files deployed successfully to R2 bucket!")
