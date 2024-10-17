require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end

  describe 'メッセージ投稿' do
    context 'メッセージが投稿できる場合' do
      it 'contentとimageが存在していれば保存できる' do
        expect(@message).to be_valid
      end
      it 'contentが空でも保存できる' do

      end
      it 'imageが空でも保存できる' do

      end
    end
    context 'メッセージが投稿できない場合' do
      it 'contentとimageが空では保存できない' do

      end
      it 'roomが紐付いていないと保存できない' do

      end
      it 'userが紐付いていないと保存できない' do

      end
    end
  end
end