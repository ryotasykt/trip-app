require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '新規投稿' do
    context '新規投稿がうまくいくとき' do
      it 'image、name、description、member、transportation、satisfaction_level、prefectureが存在すれば出品できる' do
        expect(@post).to be_valid
      end
    end

    context '新規投稿がうまくいかないとき' do
      it 'imageが空だと投稿できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが空だと投稿できない' do
        @post.name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Name can't be blank")
      end
      it 'descriptionが空だと出品できない' do
        @post.description = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Description can't be blank")
      end
      it 'memberが選択されていないと出品できない' do
        @post.member_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Member Select')
      end
      it 'transportationが選択されていないと出品できない' do
        @post.transportation_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Transportation Select')
      end
      it 'satisfaction_levelが選択されていないと出品できない' do
        @post.satisfaction_level_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Satisfaction level Select')
      end
      it 'prefectureが選択されていないと出品できない' do
        @post.prefecture_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Prefecture Select')
      end
      it 'ユーザーが紐付いていないと出品できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end
end
