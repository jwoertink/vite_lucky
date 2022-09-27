class Shared::LayoutHead < BaseComponent
  needs page_title : String

  def render
    head do
      utf8_charset
      title "My App - #{@page_title}"
      js_link asset("js/app.ts"), defer: "true", data_turbolinks_track: "reload"
      css_link asset("css/app.css"), data_turbolinks_track: "reload" 
      # without the laravel extension, the app.css file lives in the compiled js folder
      
      meta name: "turbolinks-cache-control", content: "no-cache"
      csrf_meta_tags
      responsive_meta_tag
    end
  end
end
