# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

logical_phrases = [
    '偶然にも',
    'そもそも',
    'そういうわけで',
    'もし',
    'そして',
    'いつか',
    'いいかえると',
    '個人的には',
    '歴史的には',
    'したがって',
    'さもなければ',
    '事実',
    'なぜなら',
    '対象的に',
    '一般的には',
    'それはさておき',
    'ところで',
    '科学的には',
    'そのため',
    'したがって',
    'ゆえに',
    'しかしながら',
    'けれども',
    'ところがどっこい',
    'それなのに',
    'にもかかわらず',
    'また',
    'および',
    '同じく',
    'このように',
    'おまけに',
    'そればかりでなく',
    '一方',
    '逆に',
    'For example,',
    'ただし',
    'もっとも',
    '実は',
    '特に',
    'なかでも',
    'さて',
    '客観的には',
    'すなわち',
    '次に',
    'ときに',
    'ようするに',
    'つまり',
    'もしくは'
]

story_phrases = [
    'しーっ！！',
    'な、なんだあれは？',
    'キーンコーン\nカーンコーン',
    'ゴゴゴゴゴ',
    'そのとき',
    'あの日のこと',
    'わかるかい？',
    '時は戦国',
    'ちこくちこくー！',
    'も、もうこんな時間？',
    '思い出す',
    'あれから何年だろう',
    '久しぶりに',
    '吾輩は',
    '考えてみてほしい',
    '痛い',
    'だんだん',
    '姿を消した',
    '音が聞こえる',
    '大人って生き物は',
    'そこへ',
    '私が小さいとき',
    'うだる暑さ',
    '毎年のことだ',
    '雪が来る',
    '十月×日',
    '100年たって',
    'せかいじゅうに',
    'ふしぎなことに',
    'ところが',
    'どうやら',
    'やれやれ',
    'ケータイが鳴った',
    'ミーン ミーン ミーン',
    'トンネルを抜けると',
    'なんだか',
    'ある日',
    '偶然にも',
    'いつのまにか',
    '残念ながら',
    '生き返った',
    '正直言って',
    '圧倒的だ'
]

logical_phrases.each do |phrase|
  logical_phrase = LogicalPhrase.create(phrase: phrase)
  puts logical_phrase
end

story_phrases.each do |phrase|
  story_phrase = StoryPhrase.create(phrase: phrase)
  puts story_phrase
end
