class Shared::LayoutHead < BaseComponent
  needs page_title : String

  def render
    head do
      utf8_charset
      title "My App - #{@page_title}" 
      # raw %(<script type="module" src="http://localhost:3000/css/app.css"></script>) if LuckyEnv.development?
      css_link asset("css/app.css"), data_turbolinks_track: "reload" 
      js_link asset("js/app.js"), defer: "true", data_turbolinks_track: "reload"
      meta name: "turbolinks-cache-control", content: "no-cache"
      csrf_meta_tags
      responsive_meta_tag
    end
  end
end
