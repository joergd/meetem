class ChangeVideoUrlToEmbedCode < ActiveRecord::Migration
  def change
    remove_column :people, :video_url
    add_column :people, :video_embed_code, :text
  end
end
