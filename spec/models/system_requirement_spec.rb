require 'rails_helper'

RSpec.describe SystemRequirement, type: :model do
  subject { build(:system_requirement) }

  it { is_expected.to validate_presence_of(:name) }

  it do
    create(:system_requirement) # Antes de testar a unicidade,cria um registro válido no banco
    is_expected.to validate_uniqueness_of(:name).case_insensitive
  end
  # Assim, o matcher tem um registro para comparar e não gera erro de NOT NULL.

  [ :operational_system, :storage, :processor, :memory, :video_board ].each do |attribute|
    it { is_expected.to validate_presence_of(attribute) }
  end
end
