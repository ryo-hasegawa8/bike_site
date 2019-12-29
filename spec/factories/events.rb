FactoryBot.define do
  factory :event do
    title "テストイベント"
    details "伊豆スカイライン、西伊豆スカイラインを経由し、
              芦ノ湖スカイラインを経由し山中湖までを目指すイベントです。"
    place "MyText"
    user nil
  end
end
