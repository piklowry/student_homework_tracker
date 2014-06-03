class AddGithubLinkToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :github_link, :string
    add_column :submissions, :all_work, :text
  end
end
