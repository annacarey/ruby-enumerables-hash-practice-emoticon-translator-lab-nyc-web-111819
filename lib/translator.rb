# require modules here
require "yaml"
require "pry"

def load_library(file)
  emoticons = {}
  emoticons["get_meaning"] = {}
  emoticons["get_emoticon"] = {}
   emoticon_file = YAML.load_file("lib/emoticons.yml")
   emoticon_file.each do |meaning, emoticon|
     emoticons["get_meaning"][emoticon[1]] = meaning
     emoticons["get_emoticon"][emoticon[0]] = emoticon[1]
   end 
   emoticons
end

def get_japanese_emoticon(file, emoticon)
  emoticon_library = load_library(file)
  pp emoticon_library
  result = ""
  emoticon_library["get_emoticon"].each do |english, japanese|
    if english == emoticon
      p "loop"
      pp english
      result= japanese
    else result = "Sorry, that emoticon was not found"
  end 
end 
return result
end

def get_english_meaning
  # code goes here
end