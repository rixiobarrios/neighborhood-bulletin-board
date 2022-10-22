# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  # def comments
  #   my_comment_id = self.comment_id

  #   matching_comment = Comment.where({ :id => my_comment_id })

  #   the_comment = matching_comment.at(0)

  #   return the_comment
  # end  
end
