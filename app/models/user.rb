class User < ApplicationRecord
  # enum role: { user: 'user', admin: 'admin', moderator: 'moderator' }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
