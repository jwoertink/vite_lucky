class Home::IndexPage < AuthLayout

  def content
    layout_head
    layout_slider
    layout_producers
    layout_top_videos
    layout_performers
    layout_awards
    layout_features
    layout_footer
  end

  def layout_head
    div class: "relative overflow-hidden", data_controller: "hello joystick" do
      header class: "relative" do
        div class: "bg-gray-900 pt-6" do
          nav aria_label: "Global", class: "relative mx-auto flex max-w-7xl items-center justify-between px-4 sm:px-6" do
            div class: "flex flex-1 items-center" do
              div class: "flex w-full items-center justify-between md:w-auto" do
                a href: "#" do
                  span "Your Company", class: "sr-only"
                  img alt: "", class: "h-8 w-auto sm:h-10", src: "https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=500"
                end
                div class: "-mr-2 flex items-center md:hidden" do
                  button aria_expanded: "false", class: "focus-ring-inset inline-flex items-center justify-center rounded-md bg-gray-900 p-2 text-gray-400 hover:bg-gray-800 focus:outline-none focus:ring-2 focus:ring-white", type: "button" do
                    span "Open main menu", class: "sr-only"
                    tag "svg", aria_hidden: "true", class: "h-6 w-6", fill: "none", stroke: "currentColor", stroke_width: "1.5", viewbox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg" do
                      tag "path", d: "M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5", stroke_linecap: "round", stroke_linejoin: "round"
                    end
                  end
                end
              end
              div class: "hidden space-x-8 md:ml-10 md:flex" do
                a "Product", class: "text-base font-medium text-white hover:text-gray-300", href: "#"
                a "Features", class: "text-base font-medium text-white hover:text-gray-300", href: "#"
                a "Marketplace", class: "text-base font-medium text-white hover:text-gray-300", href: "#"
                a "Company", class: "text-base font-medium text-white hover:text-gray-300", href: "#"
              end
            end
            div class: "hidden md:flex md:items-center md:space-x-6" do
              a "Log in", class: "text-base font-medium text-white hover:text-gray-300", href: "#"
              a "Start free trial", class: "inline-flex items-center rounded-md border border-transparent bg-gray-600 px-4 py-2 text-base font-medium text-white hover:bg-gray-700", href: "#"
            end
          end
        end
        div class: "absolute inset-x-0 top-0 z-10 origin-top transform p-2 transition md:hidden" do
          div class: "overflow-hidden rounded-lg bg-white shadow-md ring-1 ring-black ring-opacity-5" do
            div class: "flex items-center justify-between px-5 pt-4" do
              div do
                img alt: "", class: "h-8 w-auto", src: "https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600"
              end
              div class: "-mr-2" do
                button class: "inline-flex items-center justify-center rounded-md bg-white p-2 text-gray-400 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-600", type: "button" do
                  span "Close menu", class: "sr-only"
                  tag "svg", aria_hidden: "true", class: "h-6 w-6", fill: "none", stroke: "currentColor", stroke_width: "1.5", viewbox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg" do
                    tag "path", d: "M6 18L18 6M6 6l12 12", stroke_linecap: "round", stroke_linejoin: "round"
                  end
                end
              end
            end
            div class: "pt-5 pb-6" do
              div class: "space-y-1 px-2" do
                a "Product", class: "block rounded-md px-3 py-2 text-base font-medium text-gray-900 hover:bg-gray-50", href: "#"
                a "Features", class: "block rounded-md px-3 py-2 text-base font-medium text-gray-900 hover:bg-gray-50", href: "#"
                a "Marketplace", class: "block rounded-md px-3 py-2 text-base font-medium text-gray-900 hover:bg-gray-50", href: "#"
                a "Company", class: "block rounded-md px-3 py-2 text-base font-medium text-gray-900 hover:bg-gray-50", href: "#"
              end
              div class: "mt-6 px-5" do
                a "Start free trial", class: "block w-full rounded-md bg-indigo-600 py-3 px-4 text-center font-medium text-white shadow hover:bg-indigo-700", href: "#"
              end
              div class: "mt-6 px-5" do
                para class: "text-center text-base font-medium text-gray-500" do
                  text "Existing customer? "
                  a "Login", class: "text-gray-900 hover:underline", href: "#"
                end
              end
            end
          end
        end
      end
      main do
        div class: "bg-gray-900 pt-10 sm:pt-16 lg:overflow-hidden lg:pt-8 lg:pb-14" do
          div class: "mx-auto max-w-7xl lg:px-8" do
            div class: "lg:grid lg:grid-cols-2 lg:gap-8" do
              div class: "mx-auto max-w-md px-4 sm:max-w-2xl sm:px-6 sm:text-center lg:flex lg:items-center lg:px-0 lg:text-left" do
                div class: "lg:py-24" do
                  a class: "inline-flex items-center rounded-full bg-black p-1 pr-2 text-white hover:text-gray-200 sm:text-base lg:text-sm xl:text-base", href: "#" do
                    span "We're hiring", class: "rounded-full bg-indigo-500 px-3 py-0.5 text-sm font-semibold leading-5 text-white"
                    span "Visit our careers page", class: "ml-4 text-sm"
                    tag "svg", aria_hidden: "true", class: "ml-2 h-5 w-5 text-gray-500", fill: "currentColor", viewbox: "0 0 20 20", xmlns: "http://www.w3.org/2000/svg" do
                      tag "path", clip_rule: "evenodd", d: "M7.21 14.77a.75.75 0 01.02-1.06L11.168 10 7.23 6.29a.75.75 0 111.04-1.08l4.5 4.25a.75.75 0 010 1.08l-4.5 4.25a.75.75 0 01-1.06-.02z", fill_rule: "evenodd"
                    end
                  end
                  h1 class: "mt-4 text-4xl font-bold tracking-tight text-white sm:mt-5 sm:text-6xl lg:mt-6 xl:text-6xl" do
                    span "A better way to", class: "block"
                    span "ship web apps", class: "block text-indigo-400"
                  end
                  para "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui Lorem cupidatat commodo. Elit sunt amet fugiat veniam occaecat fugiat.", class: "mt-3 text-base text-gray-300 sm:mt-5 sm:text-xl lg:text-lg xl:text-xl"
                  div class: "mt-10 sm:mt-12" do
                    form action: "#", class: "sm:mx-auto sm:max-w-xl lg:mx-0" do
                      div class: "sm:flex" do
                        div class: "min-w-0 flex-1" do
                          label "Email address", class: "sr-only", for: "email"
                          input class: "block w-full rounded-md border-0 px-4 py-3 text-base text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-indigo-300 focus:ring-offset-2 focus:ring-offset-gray-900", id: "email", placeholder: "Enter your email", type: "email"
                        end
                        div class: "mt-3 sm:mt-0 sm:ml-3" do
                          button "Start free trial", class: "block w-full rounded-md bg-indigo-500 py-3 px-4 font-medium text-white shadow hover:bg-indigo-600 focus:outline-none focus:ring-2 focus:ring-indigo-300 focus:ring-offset-2 focus:ring-offset-gray-900", type: "submit"
                        end
                      end
                      para class: "mt-3 text-sm text-gray-300 sm:mt-4" do
                        text "Start your free 14-day trial, no credit card necessary. By providing your email, you agree to our "
                        a "terms of service", class: "font-medium text-white", href: "#"
                        text "."
                      end
                    end
                  end
                end
              end
              div class: "mt-12 -mb-16 sm:-mb-48 lg:relative lg:m-0" do
                div class: "mx-auto max-w-md px-4 sm:max-w-2xl sm:px-6 lg:max-w-none lg:px-0" do
                  img alt: "", class: "w-full lg:absolute lg:inset-y-0 lg:left-0 lg:h-full lg:w-auto lg:max-w-none", src: "https://tailwindui.com/img/component-images/cloud-illustration-indigo-400.svg"
                end
              end
            end
          end
        end
      end
    end    
  end

  def layout_slider
  end

  def layout_producers
    
  end

  def layout_top_videos
  end

  def layout_performers
  end

  def layout_awards
  end

  def layout_features
  end

  def layout_footer
  end
end
