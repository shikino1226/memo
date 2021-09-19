def janken
  puts "[0]:グー,[1]:チョキ,[2]:パー"

  me = gets.to_i

  boss = rand(3)

  jankens = ["グー","チョキ","パー"]
  puts "あなた:#{jankens[me]},相手:#{jankens[boss]}"

  if me > 2
    puts "入力された値が無効です"
    return true
  end

  if me == boss
    puts "あいこで〜"
    return true
  elsif (me == 0 && boss == 1) || (me == 1 && boss == 2) || (me == 2 && boss == 0)
    puts "あっち向いて〜"
    puts "[0]:上,[1]:下,[2]:右,[3]:左"
    hoi = gets.to_i
    hoihoi = rand(4)
    game = ["上","下","右","左"]
    puts "あなた:#{game[hoi]},相手:#{game[hoihoi]}"
    if hoi == hoihoi
      puts "あなたの勝ちです"
    else
      puts "じゃんけん..."
      return true
    end
    return false
  else
    puts "あっち向いて〜"
    puts "[0]:上,[1]:下,[2]:右,[3]:左"
    hoi = gets.to_i
    hoihoi = rand(4)
    game = ["上","下","右","左"]
    puts "あなた:#{game[hoi]},相手:#{game[hoihoi]}"
    if hoi == hoihoi
      puts "あなたの負けです"
    else
      puts "じゃんけん..."
      return true
    end
    return false
  end
end

puts "じゃんけん..."

next_game = true

while next_game do
  next_game = janken
end
