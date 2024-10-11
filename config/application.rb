require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
     
    #↓使用しないファイルは生成しないように指示
    config.generators do |g|
      # ジェネレータの設定をカスタマイズするためのコードブロック
      g.stylesheets false
      # ファルスは正しくない＝生成しないという指示
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    # ギットハブにローカルリポジトリを作成。ファーストコメントをしてリモートリポジトリが完成してるか確認する。
  end
end
