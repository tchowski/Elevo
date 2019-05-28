# frozen_string_literal: true
require 'json'
# Get team data
class StaticController < ApplicationController
  def home
    @data = File.read("#{Rails.root}/public/teams.json")
    render json: @data
  end
end
