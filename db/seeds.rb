# --- ここから追加する
restaurants = ["マクドナルド","ミスタードーナツ"]

mcdonald = [
  {name:"たまごダブル",price: 460, description:"100%ビーフパティ2枚とたまご、ベーコンをゴマつきバンズでサンドし、スパイシーなソースで味付けした食べ応え抜群な一品です" },
  {name: "マックフライポテト"  ,price: 190 , description: "外はカリッとゴールデンブラウン。中はホクホクとベイクドポテトのような食感。こだわりぬいた、マクドナルドのベストセラー。"},
  {name:"チキンマックナゲット"   ,price: 240  , description:"外はカリッとゴールデンブラウン。中はジュワッとジューシー。絶妙の温度管理と時間で揚げられたマクドナルドの自信作です。" },
  {name: "ビッグマック"  ,price: 450 , description:"おいしさも食べごたえもビッグなマクドナルドの人気メニュー。こだわりの100%ビーフと、特製ビッグマックソースが決め手"},
  {name:'炙り醤油風ダブル肉厚ビーフ', price: 550, description:'2枚重ねた厚みのある100%ビーフのおいしさを、香ばしい炙り醤油風のソースが引き立てる、思わずやみつきになる一品です。'},
  {name: "倍フィレオフィッシュ"  ,price:470  , description:"外はサクサク、中はしっとりふっくらのフィレオフィッシュ®。パティが倍で、白身魚のおいしさもボリュームアップ。" },
      {name: "ジューシーチキン ブラックペッパー"  ,price: 440 , description: "ブラックペッパーで味付けしたサクサク衣のジューシーなチキンパティに、マヨソースとレタスをあわせたクセになる一品です。"},
      {name: "ダブルチーズバーガー"  ,price:400  , description:"クリーミーなチーズと、香ばしく焼き上げられた100%ビーフパティを2枚も使った、マクドナルドの人気メニューのひとつ。" },
      {name: "てりやきマックバーガー"  ,price: 
        370 , description: "ポークパティを、日本ならではのてりやき風味に仕上げた人気メニュー。食べ応えとコクのある味わいを楽しめます。"},
        {name: "えびフィレオ"  ,price:400  , description: "2018年にリニューアル!えび本来の歯ごたえと深い味わいが自慢のザクザクえびカツに、オーロラソースが相性抜群の自信作です。"},
        {name: "エグチ(エッグチーズバーガー)"  ,price:
          240  , description: "100%ビーフパティと、とろ～りとろけるチェダーチーズにぷるぷるたまごをトッピング、ケチャップとマスタードで味付けした一品。"},
          {name: "ハンバーガー"  ,price: 170 , description:"マクドナルドのおいしさの原点。香ばしく焼き上げられたビーフパティの材料には100%ビーフを使用しています。" },]

mister_donuts = [
  {name:"ポン・デ・リング",price: 154, description:"大人気のもちもち食感！" },
  {name: "チョコファッション"  ,price: 165 , description: "ミルク感のあるサクサクした生地にチョコレートをコーティング。"},
  {name:"エンゼルフレンチ"   ,price: 165  , description:"軽くてなめらかなホイップクリームをふわっとサンド。" },
  {name: "シュガーレイズド"  ,price: 154 , description:"やさしい口溶けのふんわり食感。甘さ控えめ。"},
  {name:'チョコリング', price: 165, description:'やさしい口溶けのふんわり食感。 
    風味豊かなチョコレートをコーティング。'},
  {name: "ストロベリーリング"  ,price:165  , description:"やさしい口溶けのふんわり食感。甘酸っぱいストロベリーチョコをコーティング。" },
      {name: "エンゼルクリーム "  ,price: 165 , description: "軽くてなめらかなホイップクリームとふんわり口溶け食感。"},
      {name: "ココナツチョコレート"  ,price:165  , description:"しっとり濃厚なチョコレート生地にシャリシャリのココナツをトッピング。" },
      {name: "ハニーチュロ"  ,price: 
        165 , description: "表面をカリッと仕上げたスペイン風ドーナツ"},
        {name: "ドーナツポップ16個入り"  ,price:585  , description: "6種類からどのドーナツポップをつめあわせても、自由。ティータイムや子供のおやつに。単品で買うよりお得! "},
        {name: "ホット・セイボリーパイBBQフランクフルト"  ,price:
          242  , description: "あらびきジューシーなフランクフルトと、ハーブの香りが効いたBBQソースをサクサクのパイ生地で包んで焼き上げました"},
          {name: "ゴールデンチョコレート"  ,price: 165 , description:"しっとり濃厚なチョコレート生地にカリカリ食感をプラス。" },]



          restaurants.each do |restaurant|
           case restaurant
            when "マクドナルド" 
                restaurant = Restaurant.new(
                  name: "マクドナルド",
                  fee: 100,
                  time_required: 10,
                )
                
                mcdonald.each do |product|       
                  restaurant.foods.build(
                    name: product[:name],
                    price: product[:price] ,
                    description: product[:description]
                  )
                  restaurant.save!
                end
            when "ミスタードーナツ" 
                restaurant = Restaurant.new(
                  name: "ミスタードーナツ",
                  fee: 150,
                  time_required: 10,
                )
                
                mister_donuts.each do |product|       
                  restaurant.foods.build(
                    name: product[:name],
                    price: product[:price] ,
                    description: product[:description]
                  )
                  restaurant.save!
                end

              
                
              end


          
           end


        


# --- ここまで追加する
