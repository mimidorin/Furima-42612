source "https://rubygems.org"

ruby "3.2.0"

# Rails
gem "rails", "~> 7.1.0"

# Webサーバー
gem "puma", ">= 5.0"

# アセット
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# ビュー
gem "jbuilder"

# OS依存
gem "tzinfo-data", platforms: %i[windows jruby]

# 高速起動
gem "bootsnap", require: false

# 本番(PostgreSQL)
group :production do
  gem "pg", "~> 1.5"
end

# 開発/テスト(MySQL)
group :development, :test do
  gem "mysql2", "~> 0.5"
  gem "debug", platforms: %i[mri windows]
end

# 開発のみ
group :development do
  gem "web-console"
end

# テストのみ
group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
