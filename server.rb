# coding: utf-8
require 'wordcuta'
require 'json'
require 'jimson'

$wordcut = WordcutA::Wordcut.new(WordcutA::DEFAULT_THAI_DICT_PATH)
class WordcutServerHandler
  extend Jimson::Handler

  def put_delimiters(text, delimiter)
    $wordcut.put_delimiters(text, delimiter)
  end

  def into_strings(text)
    $wordcut.into_strings(text)
  end

  def into_ranges(text)
    $wordcut.into_ranges(text)
      .map { {s: _1.s, e: _1.e} }
  end
end

server = Jimson::Server.new(WordcutServerHandler.new)
server.start
