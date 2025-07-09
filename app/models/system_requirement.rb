class SystemRequirement < ApplicationRecord
  # Relações
  # has_many :games, dependent: :destroy

  # Validações
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :operational_system, :storage, :processor, :memory, :video_board, presence: true

  # Callbacks, métodos ou escopos podem ser adicionados aqui para organizar melhor o código
end
