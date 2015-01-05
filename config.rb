Encoding.default_external = 'utf-8'

activate :livereload
activate :directory_indexes
activate :syntax

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :haml, { :ugly => true, :format => :html5 }

activate :deploy do |deploy|
  deploy.user     = "yt-1300"
  deploy.build_before = true
  deploy.method = :rsync
  deploy.host   = "136.243.10.211"
  deploy.path   = "~/current"
end

configure :build do
  activate :minify_css
  activate :minify_javascript

  activate :asset_hash
  activate :relative_assets
end