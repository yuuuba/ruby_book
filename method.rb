気をつけること
１、シンプルにどういう処理をするか覚える（手動かす）
２、これってどんなだったっけなをなくしていく、覚える
３、そのメソッドが処理後何になるか覚える
４、ブロックのパターン、破壊的か、非破壊的か
暗記量


?,! のメソッド
trueかfolseを返すやつ
シンボル　:hoge?
ハッシュ　{:hoge => "hoge"}だけど。。シンボルをキーにすると短くかける
{hoge: "hoge"}#同じ　左はシンボルでキー

#よく使うメソッド 重要そう、変換的によく使うやつ　stringからｍap
bool true か　falseを返す

## string
上に行くほど使用頻度が高く、self,string,array,inteeger,enumerableに変換されるようまとめてます
chars ->[string] 一文字ずつ分割
each_char -> Enumerator　mapの１文字盤的な
<=>  selfが大きい時は１、等しい時は０、小さい時は−１を返す
self[nth, len] -> String | nil nth 文字目から長さ len 文字の部分文字列を新しく作って返します。 nth が負の場合は文字列の末尾から数えます。
[] 多様な使い方

bool系

破壊的
<<

非破壊的


## array
加える　unshift,push
取り出すshift,pop ※破壊的
first,lastだと破壊的じゃない

きりとり
置き換え　map
要素の挿入　[0,2]

uniq 被り削除
compact nil除くやつ
.shift -> object|nil [Array#shift (Ruby 3.2 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Array/i/shift.html)
.shift(n) -> Array
  配列の先頭を取り出してそれを返す。

## integer
有理数とは?　分数のこと。Rarional
最小、最大公倍数、公約数を出すメソッドがある。bitを返すとかもある。
times {|n| ... } -> self self 回だけ繰り返します。 self が正の整数でない場合は何もしません
times -> Enumerator

modulo　%と同義、あまり
even?　偶数？
odd?　奇数？
floor 切り捨て
ceil 切り上げ
round 四捨五入（切り上げ）
times -> Enumerator

upto

pred
rationalize -> Rational
.next - > integer selfの次の整数を返す
upto(max) {|n| ... } -> Integer
upto(max) -> Enumerator
digits -> [Integer]
downto(min) {|n| ... } -> self
downto(min) -> Enumerator
  5.downto(1) {|i| print i, " " } # => 5 4 3 2 1
.odd? -> bool 自身が奇数であればtrue
to_f -> Float 小数に変換
to_r,rationalize -> Rational 分数に変換
remainder(other) -> Numeric　割ったあまりを出力
pred -> integer selfから-1した値を返す
round(ndigits = 0, half: :up) -> Integer　self ともっとも近い整数を返します。
.even? -> bool 偶数であれば真を返す違ったら偽
.round
.floor
.ceil
divmod -> [integer,Nmumeric] self を other で割った商 q と余り r を、 [q, r] という 2 要素の配列にして返します。
  7.divmod(2)
  => [3, 1]

div -> レシーバを何で割れるかみたいな 7.div(2) # => 3
abs -> integer 絶対値を返す
denominator　-> integer 分母、つまり常に１を返す
== === #同じ

## enumerable
each_with_index ->

## object

## 