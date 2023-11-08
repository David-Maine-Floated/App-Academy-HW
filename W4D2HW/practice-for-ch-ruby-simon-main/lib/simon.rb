
require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end

  def play
    add_random_color
    while game_over == false 
      take_turn 
    end
  end

  def take_turn
    show_sequence
    player_seq = self.require_sequence
    # debugger
    if player_seq == self.seq 
      self.round_success_message
      add_random_color
      self.sequence_length += 1
    else  
      game_over_message
      reset_game 
    end  
  end

  def show_sequence
    add_random_color
    seq.each {|color| puts color}
  end

  def require_sequence
    player_seq = []
    until player_seq.length == self.sequence_length  
      player_seq << gets.chomp 
    end
    player_seq  
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts 'congrats you fkn did it!'
  end

  def game_over_message
    puts 'shiiiiiit you failed'
  end

  def reset_game
    sequence_length = 1
    game_over == false 
    sequence = []
  end


end