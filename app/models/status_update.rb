class StatusUpdate < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: true

  def self.reverse_chron_order
    order(created_at: :desc)
  end

end
