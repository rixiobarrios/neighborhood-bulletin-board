# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  def comments
    my_id = self.id
    matching_comment = Comment.where({ :post_id => my_id })
    return matching_comment.order(created_at: :desc)
  end  
end
