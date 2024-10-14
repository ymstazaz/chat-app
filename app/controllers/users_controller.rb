class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      # サインインに成功したらチャットページに移行
      # このルートパスはルーティングで　root ''で定義されている。
      redirect_to root_path
    else
      render :edit,status: :unprocessable_entity
    # なんらかのエラーがでたら（サインインできなかったら）editビューを表示
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
    # *をつけたコードのユーザーパラムスをここで定義つけてる。※プライベート以下で定義付けを記載
    # ユーザーモデルから名前とメールアドレスしか摘出させない
  end
end
