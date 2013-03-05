# coding: utf-8
module RailsCacheableFlash
  class Engine < ::Rails::Engine
    if ::Rails::VERSION::MAJOR == 3 && ::Rails::VERSION::MAJOR >= 1
      isolate_namespace RailsCacheableFlash
    end
  end

  def self.included(base)
    base.after_filter :write_flash_to_cookie
  end

  def write_flash_to_cookie
    cookie_flash = JSON.parse(cookies['flash']) rescue {}
    flash.each do |key, value|
      cookie_flash[key.to_s] = value
    end
    cookies['flash'] = cookie_flash.to_json
    flash.clear

    if defined?(Spree::Core)
      set_customizer_cookies
      # save_referrer_to_order
    end
  end

  # TODO: реализовать и проверить save_referrer_to_order на кэшируемых страницах
  # def save_referrer_to_order
  #   session[:referrer] = nil # request.env['HTTP_REFERER'] if !session[:referrer]
  #   puts "===================="
  #   puts "current_order: #{current_order}"
  #   puts "request.env['HTTP_REFERER']: #{request.env['HTTP_REFERER']}"
  #   puts "session[:referrer]: #{session[:referrer]}"
  #   puts "===================="
  # end

  def set_customizer_cookies
    cookies[:authenticity_token] = session[:_csrf_token] ||= SecureRandom.base64(32)
    cookies[:current_user_id] = current_user.try(:id)
  end
end
