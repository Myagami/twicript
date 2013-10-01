module Twicript_Core
  @@twi_vr = Hash.new([])
  @@twi_vr.default = nil
  @@twi_vr["x"] = 72
  @@twi_vr["y"] = 40
  @@twi_vr["z"] = 132

  def func_PR(v) # => Printl
    puts @@twi_vr[v] 
    #puts "PR:"+v 
  end

  def func_VR(k,v)
    @@twi_vr[k] = v
  end

  def func_HE() # => Hello,World!!
     puts "Hello,World!!"
  end
end
