class AddBlogLinkToReports < ActiveRecord::Migration
  def change
    add_column :reports, :blog_link, :string
  end
end
