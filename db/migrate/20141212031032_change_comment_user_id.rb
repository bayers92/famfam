# class ChangeCommentUserId < ActiveRecord::Migration
#   def change
#     reversible do |dir|
#       change_table :comments do |t|
#         dir.up   { t.change :user_id, :string }
#         dir.down { t.change :user_id, :integer }
#       end
#     end
#   end
# end
