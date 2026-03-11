class DescriptionGenerator
    def initialize(api_key)
      @api_key = api_key
    end
  
    def generate(product_title)
      prompt = "Write a SEO-friendly Shopify product description for: #{product_title}"
      
      # Example AI call (OpenAI)
      # client = OpenAI::Client.new(api_key: @api_key)
      # response = client.completions(
      #   parameters: {
      #     model: "gpt-4",
      #     prompt: prompt,
      #     max_tokens: 150
      #   }
      # )
      # response.dig("choices", 0, "text")
    end
  end