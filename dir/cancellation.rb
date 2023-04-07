#インスタンスメソッド、よく使うもの
# string
# array

#initialize
#attr_reader,writer,accessor
#<<
#self
#クラスメソッド→特異クラス、特異メソッド
class Vocal
  def say_a
    "あ"
  end
end

class Vocal
  class << self
    def say_i
      self.new("い")
    end
  end
end
a = Vocal.new
puts a.say_a
puts a.say_i

#?クラスに定義ぶち込んで違う処理をしたいときにクラスメソッド？

#?クラスメソッドクラス.newができる、初期値設定できない　引数いらない固定処理の時使う？.newの手間省ける
#?クラス変数いつ使う
#class
## インスタンスメソッド→class内で定義したメソッドはクラス（自分自身）.newしたインスタンスからしか呼び出せない（使えない？）クラスのインスタンスから呼び出せる
# .hogehoge == ::hogehoge

#キーワード引数
#インスタンス変数
#ハッシュ、配列を使う線引き→それぞれ学ぶ
#ハッシュ、シンボル
#ラムダ、スコープ


class Introduce
  def initialize(name,language,hitokoto)
    @name = name
    @language = language
    @hitokoto = hitokoto
  end

  def name()
    "name:#{@name}"
  end

  def language() 
    "language:#{@language}"
  end

  def hitokoto()
    "hitokoto:#{@hitokoto}"
  end
end

a = Introduce.new("太郎","日本語","こんにちは")
puts a.name
puts a.language
puts a.hitokoto


