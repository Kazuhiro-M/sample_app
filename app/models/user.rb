class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
class User < ActiveRecord::Base
   validates :name,  presence: true, length: { maximum: 50 }
end
end
