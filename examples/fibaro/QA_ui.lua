--%%name:UItest
--%%type:com.fibaro.multilevelSwitch

--%%debug:false
--%% proxy:true
--%%offline:true

--%%u:{label="lbl1",text="Hello Tue Jul 1 06_34:53 2025"}
--%%u:{{button="button_ID_6_1",text="Btn 1",visible=true,onLongPressDown="",onLongPressReleased="",onReleased="testBtn1"},{button="button_ID_6_2",text="Btn 2",visible=true,onLongPressDown="",onLongPressReleased="",onReleased="testBtn2"},{button="button_ID_6_3",text="Btn 3",visible=true,onLongPressDown="",onLongPressReleased="",onReleased="testBtn3"},{button="button_ID_6_4",text="Btn 5",visible=true,onLongPressDown="",onLongPressReleased="",onReleased="testBtn5"}}
--%%u:{switch="btn2",text="Btn2",value="false",visible=true,onReleased="mySwitch"}
--%%u:{slider="slider1",text="",min="0",max="100",visible=true,onChanged="mySlider"}
--%%u:{select="select1",text="Select",visible=true,onToggled="mySelect",value='2',options={{type='option',text='Option 1',value='11'},{type='option',text='Option 2',value='21'},{type='option',text='Option 3',value='31'}}}
--%%u:{multi="multi1",text="Multi",visible=true,values={"1","3"},onToggled="myMulti",options={{type='option',text='Option 1',value='11'},{type='option',text='Option 2',value='21'},{type='option',text='Option 3',value='31'}}}

function QuickApp:turnOn()
  self:updateProperty('value',99)
end

function QuickApp:turnOff()
  self:updateProperty('value',0)
end

function QuickApp:setValue(value)
  print("setValue",value)
  self:updateProperty('value',value)
end

function QuickApp:testBtn1(ev)
  print("testBtn1")
end

function QuickApp:testBtn2(ev)
  print("testBtn2")
end

function QuickApp:testBtn3()
  print("testBtn3")
end

function QuickApp:testBtn5(ev)
  print("testBtn5")
end

function QuickApp:mySwitch(ev)
  print("mySwitch",ev.values[1])
end

function QuickApp:mySlider(ev)
  print("mySlider",ev.values[1])
end

function QuickApp:mySelect(ev)
  print("mySelect",ev.values[1])
end

function QuickApp:myMulti(ev)
  print("myMulti",json.encode(ev.values[1]))
end

function QuickApp:onInit()
  self:debug("onInit")
  -- Only open browser on first initialization
  if not self.browser_opened then
    local result = _PY.open_web_interface_browser()
    print("Web interface opened:", json.encode(result))
    self.browser_opened = true
  end

  local i = 0
  -- setInterval(function()
  --   -- Update the label with current time every second
  --   i=i+1
  --   local txt = "A:"..i
  --   print(txt)
  --   self:updateView("lbl1", "text", txt)
  -- end, 2000)  -- Update every second
end
