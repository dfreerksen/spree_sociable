class CreateSocialLinksTable < ActiveRecord::Migration
  def change
    create_table :spree_social_links do |t|
      t.string :url,   null: false
      t.string :label, null: true, default: ''
      t.string :icon,  null: false
      t.timestamps
    end
  end
end
