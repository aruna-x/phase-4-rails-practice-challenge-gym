class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :client, uniqueness: {scope: :gym_id, message: "Only one membership per client per gym!"}

  private
  
  def unique_client
    byebug
  end
end
