# 右のようなビンゴカードを作成する
# (6列、5コラム)
# 条件:
# ・コラムBに1〜15まで
# コラムIに16〜30まで
# コラムNに31〜45まで
# コラムGに46〜60まで
# コラムOに61〜75まで
# → ランダムに5つ取り出して並べる
# ・真ん中を空(free)にする
# ・Bingoクラスを作成する
# ・eachを使う

class Bingo
  def initialize
    @bingo_card = [];
  end

  def create_card
    @bingo_card[0] = (1..15).to_a.sample(5)
    @bingo_card[1] = (16..30).to_a.sample(5)
    @bingo_card[2] = (31..45).to_a.sample(5)
    @bingo_card[3] = (46..60).to_a.sample(5)
    @bingo_card[4] = (61..75).to_a.sample(5)
    @bingo_card[2][2] = ''
  end

  def show_card
    puts '__________________________'
    puts '| B  | I  | N  | G  | O  |'
    (1..5).each do |row|
      print '| '
      @bingo_card.each do |column|
        print column[row - 1].to_s.rjust(2)
        print ' | '
      end
      puts
    end
    puts '--------------------------'
  end
end

# ここから処理を書く
bingo = Bingo.new
bingo.create_card
bingo.show_card

bingo = Bingo.new
bingo.create_card
bingo.show_card