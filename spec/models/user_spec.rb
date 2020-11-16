require 'rails_helper'

RSpec.describe User, type: :model do
  context "account を指定しているとき" do
    it "ユーザーが作られる" do
      user = User.new(name: "foo", account: "foo", email: "foo@example.com")
      expect(user.valid?).to eq true
    end
  end

  context "account を指定していないとき" do
    it "ユーザー作成に失敗する" do
    end
  end

  context "まだ同じ名前の account が存在しないとき" do
    it "ユーザーが作られる" do
    end
  end

  context "すでに同じ名前の account が存在しているとき" do
    it "ユーザー作成に失敗する" do
    end
  end
end
