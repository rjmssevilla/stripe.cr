require "../../spec_helper"

describe Stripe::PromotionCode do
  it "retrieve promotion code" do
    WebMock.stub(:get, "https://api.stripe.com/v1/promotion_codes/asddad")
      .to_return(status: 200, body: File.read("spec/support/retrieve_promotion_code.json"), headers: {"Content-Type" => "application/json"})

    promotion_code = Stripe::PromotionCode.retrieve("asddad")
  end
end
