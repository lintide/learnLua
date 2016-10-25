
function toHex(str)
  local hex = ""
  for i=1,#str do
    hex = hex..string.format("%2X",str:byte(i))
  end
  return hex
end

print(toHex("hello"))
print("a你好b toHex: ", toHex("a你好b"))

