# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Tag.create([
  # ===== エリア =====
  { name: '大阪' },
  { name: '梅田' },
  { name: '難波' },
  { name: '心斎橋' },
  { name: '天王寺' },
  { name: '吹田' },
  { name: '茨木' },
  { name: '京都' },
  { name: '河原町' },
  { name: '祇園' },
  { name: '嵐山' },
  { name: '兵庫' },
  { name: '神戸' },
  { name: '三宮' },
  { name: '元町' },
  { name: '奈良' },
  { name: '滋賀' },
  { name: '和歌山' },

  # ===== 価格帯 =====
  { name: '無料' },
  { name: '〜1,000円' },
  { name: '1,000〜3,000円' },
  { name: '3,000〜5,000円' },
  { name: '5,000〜10,000円' },
  { name: '10,000円以上' },
  { name: 'コスパ◎' },
  { name: 'プチ贅沢' },

  # ===== グルメ =====
  { name: 'カフェ' },
  { name: 'ランチ' },
  { name: 'ディナー' },
  { name: '食べ歩き' },
  { name: 'スイーツ' },
  { name: 'レストラン' },
  { name: '個室あり' },
  { name: '居酒屋' },

  # ===== おでかけ・体験 =====
  { name: '公園' },
  { name: '散歩' },
  { name: '水族館' },
  { name: '動物園' },
  { name: '美術館' },
  { name: '映画' },
  { name: '遊園地' },
  { name: 'ショッピング' },
  { name: 'アクティブ' },
  { name: 'インドア' },
  { name: 'アウトドア' },

  # ===== シチュエーション =====
  { name: '記念日' },
  { name: '初デート' },
  { name: '大人' },
  { name: '学生' },
  { name: '夜デート' },
  { name: '昼デート' },
  { name: '雨の日OK' },
  { name: 'まったり' },
  { name: 'ロマンチック' },

  # ===== 雰囲気・特徴 =====
  { name: '夜景' },
  { name: '自然' },
  { name: '海' },
  { name: '山' },
  { name: '映え' },
  { name: 'おしゃれ' },
  { name: 'クリスマス' },
  { name: '花火大会' },
  { name: 'お花見' },
  { name: '紅葉' }
])
