-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

SUNDAY		= 1		-- 일 = 1
MONDAY		= 2		-- 월 = 2
TUESDAY		= 3		-- 화 = 3
WEDNESDAY	= 4		-- 수 = 4
THURSDAY	= 5		-- 목 = 5
FRIDAY		= 6		-- 금 = 6
SATURDAY	= 7		-- 토 = 7

--[[ ---------- 예시 ----------
g_pQuestManager:AddAccountQuestDate
{
   AccountQuestID = 40530,				-- account quest id
   BeginDate = "2013-06-20 00:00:00",	-- 퀘스트 유효 날짜 - 시작
   EndDate = "2013-06-27 00:00:00",				-- 퀘스트 유효 날짜 - 끝
   DayOfWeek = THURSDAY,				-- 퀘스트 오픈 요일
}]]--
