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
        render_main_layout
      end
    end
  end

  private def render_main_layout
    div class: "flex flex-col justify-center main-container" do
      div class: "mx-auto w-full" do
        mount Shared::FlashMessages, context.flash
        div class: "flex h-screen bg-gray-200 font-roboto" do
          div class: "flex-1 flex flex-col overflow-hidden" do
            main class: "flex-1 overflow-x-hidden overflow-y-auto bg-gray-200" do
              div class: "container mx-auto px-6 py-8" do
                content
              end
            end
          end
        end  
      end
    end
  end
end
