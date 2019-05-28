# frozen_string_literal: true

class UserController < ApplicationController
  def home
    @manager = Manager.connection.select_all('SELECT users.full_name, users.team_name, managers.full_name AS name_manager FROM users INNER JOIN managers ON managers.manager_id=users.manager_id;')
    @data = User.all
    render json: { data: @data, manager: @manager }
  end
end
