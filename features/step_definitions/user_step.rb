require 'byebug'

假如('一開始沒有使用者') do
  expect(User.count).to eq(0)
end

假如('有一位使用者的姓名是{string}') do |name|
  @user = {}
  @user.merge!(name: name)
end

假如('該使用者的信箱是{string}') do |email|
  @user.merge!(email: email)
end

假如('該使用者的電話與地址資訊如下:') do |table|
  table.hashes.each do |hash|
    phone = hash['phone']
    address = hash['address']
    @user.merge!(phone: phone, address: address)
  end
end

當('使用者被建立時') do
  @user = User.create(@user)
end

那麼('使用者會有{int}位') do |count|
  expect(User.count).to eq(count)
end

假如('使用者的資訊會是正確的:') do |table|
  table.hashes.each do |hash|
    hash.each do |key, value|
      expect(@user[key]).to eq(value)
    end
  end
end
