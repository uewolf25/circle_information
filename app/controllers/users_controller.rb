class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/post/index")
    else
      render("users/new")
    end
  end

  def login_form
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      # 変数sessionに、ログインに成功したユーザーのidを代入してください
      session[:user_id] = @user.id
      
      flash[:notice] = "ログインしました"
      redirect_to("/post/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end
  

end
