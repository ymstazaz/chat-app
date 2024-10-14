class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # ビフォアアクションはアクションが実行される前にデバイスという認証ジェムを使ってユーザーがログインしてるかの確認
  # ログインしてないカスタマーはログイン画面へリダイレクトさせる（自動）
  before_action :configure_permitted_parameters, if: :devise_controller?
# デバイスは元々の仕様はメールアドレスとパスワードのみサインアップ時にデータを許可してるけど、ネームも対象にしたいから↑を入れる
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # デフォルトでは、emailとpasswordしか許可されていませんが、ここでnameも許可しています。
    # →ようはユーザー名もDBへ保存できるように許可をした
  end
end
