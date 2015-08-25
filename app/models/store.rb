class Store < ActiveRecord::Base
  before_validation :parameterize_url

  validates :name, presence: true
  validates :url,  presence: true, uniqueness: true

  has_many :items
  has_many :orders

  private

  def parameterize_url
    self.url = name.parameterize
  end
end
