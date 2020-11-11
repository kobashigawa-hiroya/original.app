class Apps::SessionsController < Devise::SessionsController
  def new_guest
    app = App.guest
    sign_in app
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end