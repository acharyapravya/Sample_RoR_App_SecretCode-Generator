class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :secret_code, dependent: :destroy

  ROLES = [ :admin , :author ].freeze

  def is?(requested_role)
    self.role == requested_role.to_s
  end

  def is_admin?
    self.role == ROLES[0]
  end

  def assign_code code_id
    secret_code = SecretCode.find_by(id: code_id)
    secret_code.update(user: self) if secret_code
  end
  
end
