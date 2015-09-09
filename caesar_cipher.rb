
def shift(character, shift, base)
    ( ( (character.ord + shift) - base.ord ) % 26 + base.ord ).chr
end



def cipher(sentence, shift)
    result = ""
    sentence.scan(/./) do |letter|
        if letter =~ /[A-Z]/
            cipher_letter = shift(letter, shift, "A")
        elsif letter =~ /[a-z]/
            cipher_letter = shift(letter, shift, "a")
        elsif letter =~ /\W/
            cipher_letter = letter
        end
        result << cipher_letter
    end
    result
end



def engine
    puts "What do you want to cipher this time?"
    sentence = gets.chomp
    puts "And what would be your shift number?"
    shift = gets.chomp.to_i
    puts "Ciphering..."
    puts "..."
    puts "Here's your result!"
    puts cipher(sentence, shift)
end

def welcome 
    puts "Welcome to our super professional caesar cipher service!"
    engine
    puts "Do you have something else you might like to cipher?"
    answer = gets.chomp
    if answer.downcase == "yes"
        puts "Sure, we can do that again."
        engine
    else
        puts "See you next time!"
    end
end




welcome
