﻿using System.Web;
using System.Web.Mvc;

namespace ASP_NET_DZ_2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
