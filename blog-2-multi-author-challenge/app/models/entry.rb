require 'net/http'
require 'uri'

class Entry < ActiveRecord::Base
  belongs_to :author, class_name: "User"

  validates :title, :body, { presence: true }

  def self.most_recent
    Entry.order(created_at: :desc).limit(5)
  end

  # def comments
  #   uri = URI("http://localhost:9394/posts/#{self.id}/comments")
  #   response = Net::HTTP.get_response(uri)
  #   p JSON.parse(response.body)
  # end
end
