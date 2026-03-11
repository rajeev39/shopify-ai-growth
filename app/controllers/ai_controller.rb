class AiController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    # Endpoint for Shopify product updates
    def product_update
      product_title = params[:product]["title"]
  
      description = DescriptionGenerator.new(ENV['OPENAI_API_KEY']).generate(product_title)
      upsell = UpsellEngine.new(ENV['OPENAI_API_KEY']).suggest(product_title)
      tags = ProductTagAI.new(ENV['OPENAI_API_KEY']).generate_tags(product_title)
  
      # Save results in DB
      ai_task = AiTask.create(
        product_id: params[:product]["id"],
        generated_description: description,
        upsell_suggestions: upsell,
        tags: tags,
        status: "completed"
      )
  
      render json: { task_id: ai_task.id, description: description, upsell: upsell, tags: tags }
    end
  end
  