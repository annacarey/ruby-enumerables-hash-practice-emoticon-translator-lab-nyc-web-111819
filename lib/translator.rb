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
     emoticons["get_emoticon"][emoticon[0]] = meaning
   end 
   pp emoticons
   emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end