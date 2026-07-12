-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
COMBO_GUIDE = {}

COMBO_GUIDE[ UNIT_CLASS["UC_ELSWORD_SWORDMAN"] ] =
{
  COMBO_COMMAND0 = 
  {
    { "Z" },
    { "u", 2, 0, "N" },
    { "X", 3, 0, "ZZZX" },
    { "Z", 0, 1, "Z" },
    { "Z", 1, 1, "ZZ" },
    { "Z", 2, 1, "ZZZ" },
    { "Z", 3, 1, "ZZZZ" },
    { "d", 2, 2, "N" },
    { "R", 3, 2, "R" },
  },
  COMBO_COMMAND1 = 
  {
    { "X" },
    { "X", 0, 0, "X" },
    { "X", 1, 0, "XX" },
    { "X", 2, 0, "XXX" },
    { "d", 1, 1, "N" },
    { "Z", 2, 1, "XXZ" },
  },
  COMBO_COMMAND2 = 
  {
    { "R" },
    { "u", 0, 0, "N" },
    { "X", 1, 0, "RX" },
    { "R", 0, 1, "R" },
    { "Z", 1, 1, "RZ" },
    { "Z", 2, 1, "RZZ" },
  },
  
}
