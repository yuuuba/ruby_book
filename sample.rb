# # a = 4.times do
# #   puts "aaa"
# # end
# # a.class

# # a = 4.times do
# # #     b = "a"
# # #     puts b 
# # # end

# # # 10.times { puts gets }


# # # times,while
# # # each,

# # # upto,downto,step,loop
# # # [【Ruby入門】ループ処理まとめ（for・times・while・each・upto・downto・step・loop） | 侍エンジニアブログ](https://www.sejuku.net/blog/14955)

# # s, t = "aa".split(' ')

# # puts s
# # puts t

# # 1.times
# # => Enumerator


# # # 0.times { puts "Hello, World!" }
# # # => integer



# # # _n = gets.chomp.to_i

# # # # a = n.times.map do |s|
# # # #     gets
# # # # end
# # # # gets # をどうするか

# # # puts gets

# # # aa = a.gsub(' ', "\n")
# # # puts aa

# # # puts ["a","a"]
# # num = [[2,3,33],[1,33,3333]]

# # num.flat_map {
# # #   |a|a.map{
# # #     |n|n*10
# # #   }
# # # }

# # # num = 1.times do
# # #   puts gets
# # # end

# # ary = []
# # 8.times { |num|
# #   ary << num
# # }

# # puts ary

# # # # foo = 1 #エラー
# # # foo += 2# foo = foo + 2

# # # puts foo

# # 2.times do
# #   puts "ss"
# # end

# # # 1.upto(4) {

# # # }
# # ary = []

# # 2.downto(0) do 
# #   |n| ary << n
# # end

# # puts ary
# def sankaku(x,y,z)
#   xy = x*y
#   yz = y*z
#   zx= z*x
#   return (xy+yz+zx)*2
# end

# puts area(2,5,3)

# キーワード引数の減りとなんとなくわかるけどどこがいざ、使いどき？
# -> １、順番通りにあたえなくても良くなる　xが１番目だから１番目にｘの引数与えないと・・・的な

# def sankaku(x:0,y:0,z:0)
#   xy = x*y
#   yz = y*z
#   zx= z*x
#   return (xy+yz+zx)*2
# end

# puts area(x:2,y:3,z:8)

# *変数->配列
# **変数->ハッシュ
# いずれも予期せぬ値を入れたり予想外のものをぶち込んだり的な

# def math(x: 0, y: 0, z: 0,**args)
#   x,y,z,args
# end

# p math(x:4,y:3,z:2)


# class Food
#   attr_reader :a,:b

#   def initialize
#     @a = 0
#     @b = 0
#   end

#   def okasi(a: ,b: )
#     a+b
#   end
# end

# a= Food.new
# puts a.okasi(a: 5,b: 0)

# coin = {yen: 100, doll: 21}
# puts coin[:yen]

# coin[:doll]

# class EggMachine
#   attr_reader :name,:age

#   def initialize(name,age)
#     @name = name
#     @age = age
#   end

#   def yuderu
#     "gutugutu"
#   end

#   def set
#     "kasyan"
#   end

#   def waru(name,age)
#     name,age
#   end
# end

# a = EggMachine.new("sazae",32)
# a.yuderu
# a.set
# a.waru("ますお",31)

# class Person
#   def initialize(money)
#     @money = money
#   end

#   def billion?
#     money >= 10000000
#   end

#   private

#   def money
#     @money
#   end
# end

# a = Person.new(100000000)
# a.billion?
# a.money

# module Chatting
#   def chat
#     "hello"
#   end
# end

# module Crying
#   def cry
#     "cry"
#   end
# end

# class Dog
#   include Chatting
#   include Crying
# end


# a = Dog.new
# a.chat
# a.cry

# if "a" == true 
#   "a"
# elsif "c"
#   "c"
# else
#   "d"
# end


# 1+1 == 2 ? "正解" : "間違い" 
# "a"=="a" ? "yes": "no"
# @ondemand.id == current_user.id ? "login" : "no"

# a && a
# 1+1 && 2+2

# a || b 

# a && a

# a = "a"
# if a == "a"|| "b"
#   true
# end

# a = 1
# b = 1

# if a && b ==1
#   true
# end

# if !true 
#   2
# end

# # 別解:
# data = gets.chomp.split
# count = 1
# data.each do |n|
#   if count.modulo(3).zero?
#     print n
#     print "\n"
#   else
#     print "#{n} "
#   end

#   count += 1
# end

# gets.chomp.split.each_slice(3) { |x| puts x.join(' ') }

# gets

# # こういう入力がある、こういう期待する出力がある
# # → じゃあ 間の処理は どうしたいか

# # 本は「目次」「章」「文章」「一文」のように「大 → 小」と細分化されていく
# # 日本語で考えて「大枠を捉え、コードに落とし込む」のがちょうどそれと似た考え方

# # 大枠
# # 半角スペース区切り、要素３つのところで折り返ししたい


# # より詳しく言うと...?
# # 1. 要素3つ目で折り返し (改行したい)
# →とりあえず配列にしよう

# # def input(n, ret = [])
# #   return ret if n.zero?

# #   input(n - 1, ret << gets.chomp)
# # end


# # def reduce(array, ret = 0)
# #   return ret if array.size.zero?

# #   a, b = array.shift(2)

# #   reduce(array, a.to_i + b.to_i + ret)
# # end

# # result = reduce([1, 2, 3, 4, 5]) # => 15
# # result = input(3) # 3回 「gets して、その結果を配列に push」、結果として 配列が返ってくる
# [
#   [] # ← 「配列の配列」(多重配列)
# ]
# # nums = []
# # nums << gets.chomp

# # p nums

# # .count(3)

# array = []
# gets.chomp.chars.each_slice(3) do |n|
#   array << "#{n.join},"
# end
# p array.join[0..-2]


# #integer

# #string
# chars

# #array
# n = []
# map
# each
# <<
# split
# slice
# join
# select
# each_slice
# pop
# unshift
# reject
# eql?
# empty?
# push (concat)
# shift
# compact
# take
# union
# values_at

# #enumerable
# each_with_index
# partition
# reverse_each

# (1..9).each_slice(9) {|a| p a}


# 自然数 N が与えられます。N が 3 けたになるよう数値の前に 0 を埋めて出力してください。

# nがlength”３”で出力するようにする
# n = gets

# 足りない場合左に０を埋める
# if n 
# end

# faren = cels*9/5+32


# def ceil_to_fahr(cels)
#   return cels*9/5+32
# end



# a = ceil_to_fahr(10)

# def fahr_to_cels(a)
  
# end

# def dice
#   Random.rand(6) + 1
# end

# def dice2
#   ret = 0
#   10.times do
#     ret += dice
#   end
#   ret
# end

# def prime?(num)
#   #それ自身の数と１以外で割れないかず
#   num % num == 0  && num / !1
# end
# prime?(2)

# a = [1..100]

# bbb = []
# # 0から99まで繰り返す、index的なノリで
# bb = 100.times do |n|
#   # nには０が入る、０＋１で１、１番目に１が入る（index0）。２番目には１＋１で２が入る(index1)
#   bbb[n] = n * 100
# end

# a = (1..100).to_a 
# a2 = a.map do |n|
#   n* 100
# end
# p a2

# a.select do |n|
#   n % 3 == 0
# end

# a.reverse



# def kan2num
#   (1..9999).to_s.gsub()
# end

# wday = {
#   sunday: "日曜日",
#   monday: "月曜日",
#   thuesday: "火曜日"}
# wday[:sunday]

# def str2hash
#   hash = Hash.new()
#   array = str.split(/\s+/)
#   while key = array.shift
#     value = array.shift
#     hash[key] = value
#   end
#   return hash
# end

# p str2hash("blue 青 white 白\nred 赤")

class Band
  attr_reader :name,:member,:formation,:area

  def initialize(name,member,formation,area)
    @name = name
    @member = member
    @formation = formation
    @area = area
  end

  def self_introduction
    "#{@name}です。#{@member}人で活動しています。#{@formation}に結成しました。#{area}でライブしています。"
  end

  def individual(reader,position)
    "リーダは、#{reader}です。#{position}やってます。"
  end
end

a = Band.new("ベアーズ",3,2022/03/22,"tokyo")

a.self_introduction
a.individual("田中","vocal")