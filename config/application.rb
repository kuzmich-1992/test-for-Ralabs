require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RalabsTest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end

# MIICXAIBAAKBgQCkwIZ3HRnc7lpsynGJ7FjjyTUqkJu4FgVYRKOza6piYihqoWdP
# XPUie1YeIN2/hGawVDwQPKU94FVf+Hz0d0PluzYZT9vkCLWyaeIAuA2i9d/s1DqJ
# tsqpun5FEqoEzx52tN8u4KhwGdXjPKG5x9URDLkF6tleO+d3b+2xYgCfiQIDAQAB
# AoGAVMC967TKwz7Swbh7JAqzx6qQcS8nDFI3uarF090FL8tzIzeY39jgOjbcnG8n
# 5AgGk5shsvCfyO8IvHAmR9S61jZi82cOIZT4Q76kXQG/UlMrsTi25kQ9U5DMBYHK
# yYbT9LmPXgtvudNJhf9rLPRKCR5ENVgXUKG7Quy/FUkejekCQQDPq5feocWXG+Pa
# lGZa25SnQGhAKU7ueIj6Xomv4bb4deWLTonkCDYkaGza09LeGp3JJPf3fP4M6eE6
# SqH0aP2XAkEAyxf8Pagvs9iFoII6JB81dFDowtdM88Hq8YtPswaqT/zmxdGlYCUs
# 3DUn85I/D1aDDkNulJtZU5Npl2Ct9Ysv3wJBAMw5AgvFaOu2WLe+kn2tTJ3BoAPg
# 26d2T7Zvu9WEEgx63HbHkKD4Vk4th0cXYlpbMGn7egMfHzMR2RUbCfOyQBcCQEpj
# tbPL1/UzGPcK3EsA126MeEVt4TTj0a+5zG6RwW5c/xZ0TPPjigP6wHB6H/j5QjXG
# Q0nRgS2YsDOPaQioe9cCQCRIiQoaO6og5Z8NAP89IzjD79m315OYuncaXNBuT6yr
# tM5uT0smDtGT9p88oSQ8SGgDAjQrhiL+V2cZvT7XA2M=



# MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDSBLF37N/470zN5GpGbPglaF1
# FJS+5ai+tACsdU4AFzdfQN7AWIvc5AIySr4qH5tNbG2+A6n+aI9+UyKoN76rFHa9
# bj4HF66/HJxp5CogfRfSLkWU8m9BvqAesF4rooLU4kxjMU+24V1uz+eTvNgy+ISx
# h8O6HmXFns4drqZr5QIDAQAB
