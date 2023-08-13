require 'rails_helper'

RSpec.describe '管理者ログインテスト', type: :system do
  it '未ログイン状態の管理画面アクセスはログイン画面に飛ぶ' do
    visit admins_questions_path
    expect(page).to have_current_path new_admin_session_path
  end

  it '管理者としてログイン済みの場合は管理画面にアクセスできる' do
    admin = FactoryBot.create(:admin)
    sign_in admin
    visit admins_questions_path
    expect(page).to have_current_path admins_questions_path
    expect(page).to have_content('問題一覧')
  end
end
