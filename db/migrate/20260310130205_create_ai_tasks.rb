class CreateAiTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :ai_tasks do |t|
      t.string :product_id
      t.text :generated_description
      t.text :upsell_suggestions
      t.text :tags
      t.string :status

      t.timestamps
    end
  end
end
