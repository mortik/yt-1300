# encoding: utf-8
# frozen_string_literal: true
Encoding.default_external = 'utf-8'

activate :syntax
activate :sprockets
activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :sass, line_comments: false

sprockets.append_path "vendor"

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript

  activate :asset_hash
  activate :relative_assets
end
