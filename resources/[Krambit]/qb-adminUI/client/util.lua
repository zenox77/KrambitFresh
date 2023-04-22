function getJsonDataFromAdminBans()
    local imDoneNow = RPC.execute("qb-adminUI:getRecentBans")
    return imDoneNow
  end
  
  exports('getJsonDataFromAdminBans',getJsonDataFromAdminBans)
  