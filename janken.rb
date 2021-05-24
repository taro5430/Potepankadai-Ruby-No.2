puts "じゃんけん..."

def janken
  puts "0（グー）1（チョキ）2（パー）３（戦わない）"

  player_hand = gets.chomp.to_i
  program_hand = rand(3)

  if player_hand == 3
    return false
  end

  jankens = ["グー","チョキ","パー"]
  puts "ホイ！"
  puts "--------------"
  puts "あなた：#{jankens[player_hand]}を出しました"
  puts "相手：#{jankens[program_hand]}を出しました"
  puts "--------------"

  if player_hand == program_hand
    puts "あいこで..."
    return true
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    attimuite()
    if @player_direction == @program_direction 
      puts "あなたの勝ちです"
      return false
    else
      puts "じゃんけん..."
      return true
    end
  else
    attimuite()
    if @player_direction == @program_direction
      puts "相手の勝ちです"
      return false
    else 
      puts "じゃんけん..."
      return true
    end
  end
end

def attimuite
  puts "あっち向いて〜"
  puts "0（上）1（下）2（左）3（右）"

  @player_direction = gets.chomp.to_i
  @program_direction = rand(4)

  directions = ["上","下","左","右"]
  
  puts "ほい！"

  puts "-------------"
  puts "あなた：#{directions[@player_direction]}"
  puts "相手：#{directions[@program_direction]}"
  puts "-------------"
end

next_game = true

while next_game
  next_game = janken
end
