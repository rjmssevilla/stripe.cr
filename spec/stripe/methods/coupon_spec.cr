require "../../spec_helper"

describe Stripe::Coupon do
  it "retrieve coupon" do
    WebMock.stub(:get, "https://api.stripe.com/v1/coupons/asddad")
      .to_return(status: 200, body: File.read("spec/support/retrieve_coupon.json"), headers: {"Content-Type" => "application/json"})

    coupon = Stripe::Coupon.retrieve("asddad")
    coupon.id.should eq("myO3HEFo")
  end
end
