# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + "/Core/Twicript_Core"

class Twicript_Engine
  include Twicript_Core # => 関数系
  
=begin
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
       puts "\n"
     end
=end

  def loading_code(file) # ファイルを読む
    begin #処理
      src = File.readlines(file) 
      #ヘッダ判定
      if /^twicript/ =~ src[0] then
        raise "Error Header Code"
      end

      for i in 1 .. src.size
        syntax_check(src[i])
      end

    rescue => err # 例外処理
      puts err
    end
  end

  def syntax_check(line) # 構文チェック
    if /([A-Z]{1,})_([a-z]{1});/ =~ line # 出力系処理
      send("func_#{$1}",$2);
    elsif /([A-Z]{1,})_([a-z0-9]{1,}|[a-z0-9]{1,},[a-z0-9]{1,})=([a-z0-9'"]{1,});/ =~ line # 演算系処理
      #p line.scan(/([A-Z]{1,})_([a-z0-9]{1,}|[a-z0-9]{1,},[a-z0-9]{1,})=([a-z0-9]{1,});/)
      #puts "func_#{$1}"
      send("func_#{$1}",$2,$3);
      #puts "Math:"+line 

    elsif /([A-Z]{1,});/ =~ line # その他
      send("func_#{$1}");
    end
  end

  def type_check(data) # データタイプをチェックする
    return data.class
  end

end
