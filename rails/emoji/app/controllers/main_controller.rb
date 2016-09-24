require 'json'
require 'net/http' #to make a GET request
require 'net/https' #to make a https GET request
require 'open-uri' #to fetch the data from the URL to then be parsed by JSON
class MainController < ApplicationController

    $emoji_uri = "https://api.github.com/emojis"

    def index
    end

    def get_emoji
        @mood = params[:mood]
        uri = URI.parse($emoji_uri)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new(uri.request_uri)
        response = http.request(request)
        data = response.body
        @emoji = JSON.load(data)
        if @emoji.has_key?(@mood)
            puts "$"*200
            puts @emoji.values_at(@mood)
            puts "$"*200
            @link = @emoji.values_at(@mood)[0]
            render :show
        else
            @message = "I'm sorry. I could not recognize your mood. Please try again"
            render :show
        end
    end

    def show
    end
end
