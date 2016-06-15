def hello
  "Hello!"
end

def greet(who = "")
  who.empty? ? "Hello!" : "Hello, #{who}!"
end
