class User < ApplicationRecord
  enum :role, { user: "user", admin: "admin", moderator: "moderator" }, default: "user", prefix: true

  # Scopes para facilitar consultas
  scope :admins, -> { where(role: roles[:admin]) }
  scope :moderators, -> { where(role: roles[:moderator]) }
  scope :regular_users, -> { where(role: roles[:user]) }

  # Método para verificar se o usuário tem permissão de administrador ou moderador
  def elevated_role?
    role_admin? || role_moderator?
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
