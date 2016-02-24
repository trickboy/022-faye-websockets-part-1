class PagesController < ApplicationController
  include ApplicationHelper
  def about
  	message = "toastr.info('#{render_to_string partial: '/pages/hello_world'}')".squish
  	# <%= render 'pages/hello_world', f: f %>
  	# <%= render 'pages/hello_world', locals: { f: f } %>

  	broadcast_message '/about', message
  end

  def profile
  	message = "toastr.info('Someone has just joined the profile page')"
  	broadcast_message '/profile', message
  end

  def contact
  	message = "toastr.info('Someone has just joined the contact page')"
  	broadcast_message '/contact', message
  end
end
