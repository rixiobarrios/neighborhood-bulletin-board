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
  # validates(:title, { :presence => true })
  # validates(:body, { :presence => true })
  def comments
    my_id = self.id

    matching_comment = Comment.where({ :id => my_id })

    return matching_comment
  end  
end
