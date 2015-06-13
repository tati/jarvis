bot_name = "Jarvis"

puts "Welcome...initializing"
puts "beep boop beep boooooooop"
`say -v Oliver "beep boop beep boooooooop"`

puts bot_name + ": " + "How can I help?"
`say -v Oliver "How can I help?"`

song = "Rah rah ah-ah-ah! Ro mah ro-mah-mah! Gaga ooh-la-la!"

documentation = ""
documentation = {
  "quit" => "quits the program",
  "help" => "shows this awesome help list",
  "burp" => "causes excessive belching",
  "sing" => "sings a lovely tune"
}

commands = ""
commands = {
  "burp" => lambda { `say -v Oliver "buuuurrrrrp!"` },
  "quit" => lambda { break },
  "sing" => lambda { puts song },
  "help" => lambda { p documentation }
}

request = ""
while request != "quit"
    print "> "
    request = gets.chomp

    if commands.include? request
      commands[request].call()

    else `say "can't find command"`
    end
end

`say "goodbye"`
