require 'payjp'

class MyPayjp

  Payjp::api_key = PAYJP_TEST_SECRET_KEY

  # カードトークンを用いて支払いを作成する
  def self.create_charge_by_token(token, amount)
    Payjp::Charge.create(
      amount:   amount,
      card:     token,
      currency: 'jpy'
    )
  end

  # 顧客を登録する
  def self.create_customer(token)
    Payjp::Customer.create(card: token)
  end

  # 顧客を用いて支払いを作成する
  def self.create_charge_by_customer(customer, amount)
    Payjp::Charge.create(
      amount:   amount,
      customer: customer,
      currency: 'jpy'
    )
  end

end
