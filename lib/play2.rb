class Player 
    attr_accessor :name, :life_points 
  
    def initialize(name)
      @name = name.to_s
      @life_points = 100
    end
  
    def show_state
      if @life_points <= 0
        puts "#{name} a été tué ! ☠️"
      else 
        puts "* #{@name} a #{life_points} points de vie ❤️"
      end
    end
  
    def gets_damage(damage_points)
      @life_points -= damage_points
    end
    
    def compute_damage
      return rand(1..15)
    end
  
    def attacks(player_to_attack)
      puts "#{@name} attaque #{player_to_attack.name} 🐍"
      attack_damage = compute_damage
  
      puts "#{@name} inflige #{attack_damage} points de dommages à #{player_to_attack.name} "
      player_to_attack.gets_damage(attack_damage)
    end 
  end
  