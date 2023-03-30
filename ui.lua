local ui = uiView:LoadUrl("file:///"..System.GetExecutableDirectory().."index.html")

function createCustomUI()
  local uiName = "Cyberpunk UI"
  local uiLayer = 1000 
  local uiFlags = Game.GetUIFlags() 
  local uiRect = UiRect.new(0, 0, uiFlags:GetWidth(), uiFlags:GetHeight()) 

  local uiView = WebView.new()
  uiView:LoadString(ui, "") 

  local customUI = UiCustomElement.new(uiName, uiView, uiRect, uiLayer)

  Game.GetUIManager():AddCustomElement(customUI)
end

createCustomUI()
