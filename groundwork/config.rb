# Set this to the root of your project
http_path = "/"
css_dir = "css"
sass_dir = "src/scss"
images_dir = "images"
javascripts_dir = "js"
fonts_dir = "fonts"

output_style = :expanded
environment = :development

# To enable debug info. Uncomment:
# if environment != :production
#   sass_options = {:debug_info => true}
# end

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

line_comments = false
color_output = false

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass src/scss scss && rm -rf sass && mv scss sass
preferred_syntax = :scss
