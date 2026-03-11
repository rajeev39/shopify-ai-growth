class UpsellEngine
    def initialize(api_key)
      @api_key = api_key
    end
  
    def suggest(product_title)
      prompt = "Suggest 3 upsell or cross-sell products for: #{product_title}"
      
      # Example AI call
      # ...
    end
  end