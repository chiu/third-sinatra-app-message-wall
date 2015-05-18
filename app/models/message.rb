class Message < ActiveRecord::Base



  # validates :title, presence: true, length: { maximum: 40 }
  validates :content, presence: true, length: { maximum: 140 }
  validates :author, presence: true, length: { maximum: 25 }


  def other_messages(current_author)
        message_record = Message.where(author: current_author)

        message_record[0]

        return message_record[0]
     
  end

end