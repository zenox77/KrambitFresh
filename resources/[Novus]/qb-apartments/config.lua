
MenuData = {
  apartment_check = {
    {
      title = "Apartment",
      description = "Forclose Apartment",
      key = "judge",
      children = {
          { title = "Yes", action = "qb-apartments:handler", key = { forclose = true} },
          { title = "No", action = "qb-apartments:handler", key = { forclose = false } },
      }
    }
  }
}
