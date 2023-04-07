#基礎知識
print ("hogehoge")
print メソッド
()　引数
return  戻り値,メソッドが返した値のこと
クラスメソッド　User.newのようにクラス自身に使うメソッド



## 命名規則
メソッド
  単語が繋がる場合スネークケース　hoge_hoge

## 新しく知り得たこと
クラス変数　そのクラスのすべてのインスタンスで共有できる変数
定数　Hoge::HOGE　とかすればHogeクラスのHOGE定数を外部から参照できる（外部クラスにこの書き方）
特異クラス　クラスメソッド、インスタンスとかじゃなくてクラス自身、クラスそのものをレシーバとするもの
特異メソッド　特異クラスの中のメソッドのこと
インスタンス変数　同じインスタンスであればメソッド定義を超えて参照、変更可能。初期化していないインスタンスを参照すると返り値はnil。インスタンスごとに違う値を持てる、インスタンスが存在し続ければ保持する
ローカル変数　メソッドの中でしか参照できない。メソッド呼び出ごとに新しく割り当てられる
配列を引数にするとき*配列で渡せば配列そのものでなく、いい感じに渡ってくれる・・？

*引数
*num 不定の引数　入力と引数の数が合ってない時とか、どれだけ１個の箱に入るか不定な時全部入る


a,*b=1,2,222,2,2
=> [1, 2, 222, 2, 2]
irb(main):012:0> p a
1
=> 1                                             
irb(main):013:0> p b
[2, 222, 2, 2]
=> [2, 222, 2, 2]    
キーワード引数
symbolはイミュータブル（変更できない）、同じオブジェクトID→他は？string
  '' はそのまま出力
  ""は\nなど特殊記号実行して出力
  whileは条件がtrueになるまで実行とかの繰り返しで使うと良い
  ・イテレータ、繰り返しの機能 eachとか
  => 戻り値
  #わからないこと
  キーワード引数　なぜ配列の中じゃないといけないのか配列前提なぜ　**変数
  ハッシュで引数渡せばキーワード引数が使えるし別の箱もぶち込めるstring配列と比べればってことかしら
bitとか２進数とか
->2進数、１０進数は理解しよ
*の使い方パターン

returnはメソッドの最終的な戻り値、省略可能　ここで処理終わりーな時便利
def hoge(x,y,z)
  xy=x*y
  yz=y*z
  zx= z*x
  (xy+yz+zx) *2 #return省略、ここが最終処理したいこと
end
p hoge(2,3,4) #if文とかだったらifのとこだけどね処理は


return

def say_hello(name)
  return "#{name}, hello!" # メソッド内の処理はここで終わる
  puts "ここの記述は実行されない"
end

result = say_hello("taro")
puts result
#=> taro, hello!

.hoge? はtrue or false?


# メソッド、リファクタ関連
+ → *変数

numbers = [1, 2, 3]
numbers_with_zero_and_100 = [0, *numbers, 100] # => [0, 1, 2, 3, 100]
##使いそうなメソッド

.join 配列を文字列に変換  numbers.join(', ') # [1, 2, 3] => "1, 2, 3"
to_h 


### rails
pluck
admin


## 復習
多重代入とは？
キーワード引数とは
変数のスッコプ説明できるか
_nの正体
論理演算子　&& ||



## 人のコード
users_with_index = users.map.with_index(1) do |user, counter|
  [counter, user]
end
　with_indexがわからん
[[初心者向け] RubyやRailsでリファクタリングに使えそうなイディオムとか便利メソッドとか - Qiita](https://qiita.com/jnchito/items/dedb3b889ab226933ccf)

m = gets.to_i

[二次元配列の入力 2 | レベルアップ問題集 | プログラミング学習サイト【paizaラーニング】](https://paiza.jp/works/mondai/array_primer/array_primer__2dmatrix_input_step2/edit?language_uid=ruby)
_n = gets.chomp.to_i

# 1 行目に整数 M が与えられます。
# 2 行目以降に 5 行 M 列の配列が与えられます。上から i 番目、左から j 番目の整数は a_ij です。
# 全要素を各行ずつ半角スペース区切りで出力し、行の終わりで改行してください。

# ５行ｍ列は勝手に取得される、timesでおｋ
# 行で一まとまり、
# ＝getsで区切って５行出力すればいい
# 出力するには、２次元配列にして要素を一個ずつ出力
# ５回繰り返したものを空配列に打ち込めば２次元配列になる
# 空配列作って、そこにtimesでgets繰り返したもの（joinで空白与える）を空配列に打ち込めば２次元配列になる

array = []
5.times do
    a = gets.chomp.split.map(&:to_i)
    array << a
end
# それぞれの配列を出力すれば行ごとの出力になるはず

array.each do |row|
  puts row.join(' ')
end