class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def index
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  #  create
    # binding.pryフォームから送信されるパラムスを確認するためにビンディングプレイを記述（ローカルで開いたものをターミナルで確認テストするためのコード）

    private
#  ストロングパラメータを設定。（余計な物を保存しないように設定）
    def room_params
      params.require(:room).permit(:name, user_ids: [])
    end
 end
