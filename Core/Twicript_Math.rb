# -*- coding: utf-8 -*-
module Twicript_Math
  #演算
  def func_PP(vk,vv) # 加算
    vkr = vk.split(",")
    v = 0
    (0..vkr.length-1).each{|i|
      v += @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_DD(vk,vv) # 減算
    vkr = vk.split(",")
    v = @@twi_vr[vkr[0]]
    
    (1..vkr.length-1).each{|i|
      v -= @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_ME(vk,vv) # 除算
    vkr = vk.split(",")

    (0..vkr.length-1).each{|i|
      t = @@twi_vr[vkr[i]]
      #v = @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_SP(vk,vv) # 乗算
    vkr = vk.split(",")

    (1..vkr.length-1).each{|i|
      v = @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_PW(vk,vv) # 累乗(変数,数)
    vkr = vk.split(",")
    i = 0
    vb = @@twi_vr[vkr[0]].to_i
    v = vb
    vmax =  vkr[1].to_i 
    vmax -= 1
    while i < vmax do
      v = vb * v
      i += 1
    end
    @@twi_vr[vv] = v
  end
end
