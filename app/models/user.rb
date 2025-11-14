class User < ApplicationRecord
  # Deviseの基本機能
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ニックネーム・誕生日必須
  validates :nickname, presence: true
  validates :birthday, presence: true

  # 名前（全角・漢字ひらがなカタカナ）
  with_options presence: true,
               format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
    validates :last_name
    validates :first_name
  end

  # 名前カナ（全角カタカナ）
  with_options presence: true,
               format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :last_name_kana
    validates :first_name_kana
  end

  # パスワード（半角英数字混合）
  validates :password,
            format: {
              with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+\z/,
              message: 'には英字と数字の両方を含めて設定してください'
            }
end
