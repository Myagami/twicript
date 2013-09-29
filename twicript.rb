#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#基礎エンジン呼び出し
require File.dirname(__FILE__) + "/Twicript_Engine"

#インスタンス生成 / 起動画面出力
#engine = Twicript_Engine.new

#スクリプト読み込み
tw_src = ARGV[0]
print "\n"
puts tw_src

