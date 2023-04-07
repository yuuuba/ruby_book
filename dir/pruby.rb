def ruby(x,y,z)
  return x * y * z
end

p ruby(4,5,10)

def area(x,y,z)
  xy = x*y
  yz = y*z
  zx = z*x
  return (xy+yz+zx)*2
end

p area(3,5,2)
p area(50,20,30)

a = 3
if a>= 20
  puts "20以上です"
elsif a>=10
  puts "10以上です"
else
  puts "条件を満たさない数値です"
end


i = 1
while i <= 10 do
  print i
  i = i + 1
end

#より小さいか、より大きいか true,false

# Class CoffeeMachine
#   attr_reader :a,b

#   def initialize(a,b)
#     @a = a
#     @b = b
#   end

#   def posion
#     return a
#   end

#   def milk
#     return b
#   end

#   private

# end 

class Name
  def initialize(name)
    @name = name
  end

  def out
    puts "名前:#{@name}"
  end
end

b = Name.new("田中")
puts b
b.out

プログラムの処理の対象をオブジェクトとして考える
全部オブジェクト
配列オブジェクト、配列　== Arrayクラスのオブジェクト
Hogeクラスのオブジェクト == インスタンス
オブジェクト == インスタンス　だけど、インスタンスの方がクラスを意識した言い方

#オブジェクト　全部オブジェクト　インスタンスもオブジェクト
#class 設計図、型
#インスタンス　あるクラスのオブジェクトのことをそのクラスのインスタンス integerクラスのインスタンス　詳細な言い方

class Fruit
  attr_reader :name

  #attr_reader :name == 下のdef name end
  # def name #@nameを参照する
  #   @name
  # end
  # p a.name #バナナ(第２引数があったら？)


  # def name=(name) #nameの値を変更する
  #   @name = name
  # end
  #a=Hoge.new
  # a.name = "りんご" #nameの中身がりんごにかわる

  #なぜattr_..があるのか
  #インスタンス変数いくつもああるとミスおきやすい作るの大変
  # attr_reader :name #リーダー、ゲッター
  # attr_writer :name #ライター、セッター
  # attr_accessor :name #両方、アクセサー

  #---------------------------------------------
  def initialize(name,seed)
    @name=name
    @seed = seed
  end

  def favorite
    "好きな果物:#{@name}"
  end

  def seed
    "タネ:#{@seed}"
  end

  
end

a = Fruit.new("バナナ","あり")
puts a.favorite
puts a.seed

