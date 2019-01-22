# require modules here
require "yaml"

def load_library(file)
  emotes = YAML.load_file(file)
  emotes_hash = { "get_meaning" => {},
                  "get_emoticon" => {}
  }
  
  emotes.each do |item|
    item.each do |element1, element2|
      emotes_hash["get_emoticon"][element1] = element2
      emotes_hash["get_meaning"][element2] = item[0]
    end
  end
  emotes_hash
end

def get_japanese_emoticon(file, emoticon)
  
  hash = load_file(file)
  if (hash["get_meaning"].key?(emoticon)) == true
    puts hash["get_meaning"][emoticon]
  end
end

def get_english_meaning
  # code goes here
end