# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

activate :blog do |blog|
  # Custom path for posts
  blog.sources = 'blog/{year}-{title}.html'
  blog.permalink = 'blog/{year}/{title}.html'

  # Get summary text without installing Nokogiri
  blog.summary_generator = Proc.new { |post| post.data[:summary] }

  # Enable pagination
  blog.paginate = true
  blog.page_link = "page/{num}"
  blog.per_page = 10
end

set :fonts_dir, 'fonts'

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page "/me", layout: false

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
