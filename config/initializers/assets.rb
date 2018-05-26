# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( static_pages.css )
Rails.application.config.assets.precompile += %w( static_pages.js )

Rails.application.config.assets.precompile += %w( observations.css )
Rails.application.config.assets.precompile += %w( observations.js )

Rails.application.config.assets.precompile += %w( observation_types.css )
Rails.application.config.assets.precompile += %w( observation_types.js )

Rails.application.config.assets.precompile += %w( job_types.css )
Rails.application.config.assets.precompile += %w( job_types.js )

Rails.application.config.assets.precompile += %w( salaries.css )
Rails.application.config.assets.precompile += %w( salaries.js )

Rails.application.config.assets.precompile += %w( requests.css )
Rails.application.config.assets.precompile += %w( requests.js )

Rails.application.config.assets.precompile += %w( alianzas.css )
Rails.application.config.assets.precompile += %w( alianzas.js )

Rails.application.config.assets.precompile += %w( products.css )
Rails.application.config.assets.precompile += %w( products.js )

Rails.application.config.assets.precompile += %w( economy_activities.css )
Rails.application.config.assets.precompile += %w( economy_activities.js )

Rails.application.config.assets.precompile += %w( bank_accounts.css )
Rails.application.config.assets.precompile += %w( bank_accounts.js )

Rails.application.config.assets.precompile += %w( reniecs.css )
Rails.application.config.assets.precompile += %w( reniecs.js )

Rails.application.config.assets.precompile += %w( ubigeos.css )
Rails.application.config.assets.precompile += %w( ubigeos.js )
