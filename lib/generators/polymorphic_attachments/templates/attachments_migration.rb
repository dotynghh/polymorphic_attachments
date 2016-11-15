class CreatePolymorphicAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :polymorphic_attachments do |t|
      t.string :attachment_file
      t.integer :polymorphic_attachmentable_id
      t.string :polymorphic_attachmentable_type

      t.timestamps
    end
  end
end
