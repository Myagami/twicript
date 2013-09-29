# -*- coding: utf-8 -*-
class Twicript_Engine
  def initialize()
    i=0
    while i < 30
      print "-"
      i += 1
    end
    print "\n"
    print "Twicript for Command Line\n"
    i=0
    while i < 30
      print "-"
      i += 1
    end
    print "\n\n"
  end

  def loading_code(file)
    begin #処理
      src = File.readlines(file) 
      #ヘッダ判定
      if !/^#twicript$/ =~ src[0] then
        raise "Error Header Code"
      end

      for i in 1 .. src.size
        puts src[i]
      end

    rescue => err # 例外処理
      puts err
    end

  end
end
