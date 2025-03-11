
# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_pc}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {_ibuf_io_inst_0_valid}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ctrl_killd}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_pc}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_pc_valid}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_reg_flush_pipe}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mul}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_div}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_branch}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {ex_ctrl_mem}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_pc}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_pc_valid}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_reg_flush_pipe}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_branch}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {mem_ctrl_mem}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {_ibuf_io_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {_ibuf_io_inst_0_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ctrl_killd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ex_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ex_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ex_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ex_ctrl_mul}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ex_ctrl_div}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ex_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {ex_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {mem_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {mem_pc_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {mem_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {mem_ctrl_branch}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {mem_ctrl_mem}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_pc}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_valid}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_replay}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_xcpt}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_reg_flush_pipe}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {wb_reg_pc}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {wb_reg_valid}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {wb_reg_replay}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {wb_xcpt}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {wb_reg_flush_pipe}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"

# curly brace to avoid string interpolcation
set S1 {wb_ctrl_wxd}
set S2 {wb_ctrl_wxd}
set s1_exist [catch { get_signal_info -logic $S1 } type1]
if { $s1_exist == 1 } {
    puts "fail to find $S1"
}
set s2_exist [catch {get_signal_info -logic $S2 } type2] 
if { $s2_exist == 1 } {
    puts "fail to find $S2"
}
if { $s1_exist == 0 && $s2_exist == 0 } {
  set path [graph -shortest_path -from  $S1 -to $S2 -type register]  
  puts "$S1 $S2, $path"
  puts "$type1 $type2"
  set len [llength $path]
  if { $type1 == "flop" && $type2 == "flop" && $len == 2 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "flop" && $type2 == "wire" && $len <= 3 } {
        puts "ADD $S1 $S2"
  }
  if { $type1 == "wire" && $type2 == "wire" } {
      if { $len == 2 } {
            puts "ADD(ww2) $S1 $S2"
        } elseif { $len == 3 } {
            puts "ADD(ww) $S1 $S2"
        } 
  }
  if { $type1 == "wire" && $type2 == "flop" } {
    set ele2 [lindex $path 1]
    set ele3 [lindex $path 2]
    if { $len == 2 } {
        puts "ADD $S1 $S2"
    }
  }
} 
puts "--------------------------------"
