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
        div class: "" do
          img src: "images/crystal_logo.png"
          img src: "images/lucky_logo.png"
          text "+"
          
          img src: "images/vite_logo.png"
          div class: "vite-logo"
          content
        end
      end
    end
  end
end
