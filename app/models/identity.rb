class Identity < ActiveRecord::Base

  TOKEN_LENGTH = 32

  # use "has_many" instead of "has_one" due to inherited_resources
  # unique index on database guard this
  has_many :cope_loss_questionaires
  has_many :eas_d_adult_questionaires
  has_many :olbi_questionaires
  has_many :pss_questionaires
  has_many :ssp_questionaires
  has_many :uwes_questionaires

  before_create :generate_token

  def self.create_and_return_token
    create.token
  end

  def self.get_token(token)
    (find_with_valid_token(token) || create).token
  end

  def self.find_with_valid_token(token)
    find(:first, :conditions => ["token = ? AND created_at > ?", token, 1.week.ago])
  end

  private

    def generate_token
      self.token = ActiveSupport::SecureRandom.urlsafe_base64(TOKEN_LENGTH)[0..TOKEN_LENGTH-1]
    end

end
