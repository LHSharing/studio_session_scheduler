class Engineer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
 devise :database_authenticatable, :registerable,
         #:recoverable, :rememberable, :validatable
         # devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:github]



  def self.from_omniauth(auth)
    binding.pry
    where(provider: auth.provider, uid: auth.uid).first_or_create do |engineer|
      engineer.provider = auth.provider
      engineer.name = auth.info.name
      engineer.uid = auth.uid
      engineer.email = auth.info.email
      engineer.password = Devise.friendly_token[0, 20]
    end
end

end
