class Stripe::PromotionCode
    def self.retrieve(id : String)
      response = Stripe.client.get("/v1/promotion_codes/#{id}")
  
      if response.status_code == 200
        PromotionCode.from_json(response.body)
      else
        raise Error.from_json(response.body, "error")
      end
    end
  
    def self.retrieve(payment_method : PromotionCode)
      retrieve(PromotionCode.id)
    end
  end
  