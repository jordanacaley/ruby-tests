# Convert number of seconds to time display hh:mm:ss

def time_string(seconds)
  time_display = []
  hr = seconds / 3600
  min = (seconds - (3600*hr)) / 60
  sec = seconds - (3600*hr) - (60*min)
  if hr < 10
    time_display.push("0#{hr}")
  else 
    time_display.push(hr)
  end
  if hr < 10
    time_display.push("0#{min}")
  else 
    time_display.push(min)
  end
  if sec < 10
    time_display.push("0#{sec}")
  else 
    time_display.push(sec)
  end
  return time_display.join(":")
end

time_string(4000)