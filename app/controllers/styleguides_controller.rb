class StyleguidesController < ApplicationController
  # GET /styleguide
  def show
    authorize :styleguide
    flash.now[:alert] = 'This is an <b>alert</b> message.'.html_safe
    flash.now[:notice] = 'This is a <b>notice</b> message.'.html_safe
    flash.now[:success] = 'This is a <b>success</b> message.'.html_safe
  end
end
