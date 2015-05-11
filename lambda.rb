def run_block block
  print "Runnimg a"
  block.call
  puts ".....done..\n"
end

def app
  run_block lambda{ print " lambda"; return }
  run_block proc{ print " proc"; return }
end
 app
