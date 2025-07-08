require_relative "boot"

require "rails"
# Escolha os frameworks que deseja usar:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie" # Descomente se usar testes com TestUnit

# Carrega as gems do Gemfile conforme o grupo de ambiente
Bundler.require(*Rails.groups)

module EcommerceInvenio
  class Application < Rails::Application
    # Inicializa as configurações padrão para a versão do Rails usada
    config.load_defaults 8.0

    # Configurações de internacionalização
    config.i18n.default_locale = :'pt-BR'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

    # Ignora pastas específicas dentro de lib para autoload/eager_load
    config.autoload_lib(ignore: %w[assets tasks])

    # Configurações adicionais podem ser feitas aqui ou nos arquivos de ambiente
    # Exemplo:
    # config.time_zone = "Brasilia"
    # config.eager_load_paths << Rails.root.join("extras")

    # Não gera arquivos de teste de sistema automaticamente
    config.generators.system_tests = nil
  end
end
