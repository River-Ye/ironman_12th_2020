#language: zh-TW
@user
功能: 建立使用者
  這是示範的範例
  支援中英文寫法

  場景: 能建立使用者
    假如 一開始沒有使用者
    假如 有一位使用者的姓名是"小菜"
    而且 該使用者的信箱是"river@riverye.com"
    而且 該使用者的電話與地址資訊如下:
      |phone      |address  |
      |0987654321 |台北市某處 |
    當 使用者被建立時
    那麼 使用者會有1位
    而且 使用者的資訊會是正確的:
      |name |email             |phone      |address  |
      |小菜  |river@riverye.com |0987654321 |台北市某處 |
