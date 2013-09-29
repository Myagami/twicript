#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#基礎エンジン呼び出し
require File.dirname(__FILE__) + "/Twicript_Engine"

#インスタンス生成 / 起動画面出力
engine = Twicript_Engine.new

#スクリプト読み込み
tw_src_name = ARGV[0]

#コード読出
begin
  if /^[a-zA-Z0-9_]{1,}\.twc$/ =~ tw_src_name then
    engine.loading_code(tw_src_name)
  else
    raise "file add type error!"
  end
rescue => err
  puts err
end

