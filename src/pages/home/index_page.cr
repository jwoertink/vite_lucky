class Home::IndexPage < AuthLayout
  def content
    h1 "Testing Lucky + Vite!"
    
    helpful_tips
  end

  private def helpful_tips
    h3 "With this setup, you can add your js and css"
    ul class: "card" do
      li { link_to_authentication_guides }
      li "Modify this page: src/pages/me/show_page.cr"
      li "Change where you go after sign in: src/actions/home/index.cr"
    end
  end

  private def link_to_authentication_guides
    a "Check out the authentication guides",
      href: "https://luckyframework.org/guides/authentication"
  end
end
