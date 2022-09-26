abstract class AuthLayout
  include Lucky::HTMLPage

  abstract def content
  abstract def page_title

  # The default page title. It is passed to `Shared::LayoutHead`.
  #
  # Add a `page_title` method to pages to override it. You can also remove
  # This method so every page is required to have its own page title.
  def page_title
    "Welcome"
  end

  def render
    html_doctype

    html lang: "en" do
      mount Shared::LayoutHead, page_title: page_title

      body do
        mount Shared::FlashMessages, context.flash
        img src: dynamic_asset("images/vite_logo.png")

        img src: asset("images/lucky_logo.png") 
        #img src: dynamic_asset("images/lucky_logo.png")
        div class: "vite-logo"
        div class: "vite-logo2"
        content
      end
    end
  end
end
