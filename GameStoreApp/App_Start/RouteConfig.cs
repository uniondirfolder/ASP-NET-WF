using System;
using System.Web.Routing;

// namespace GameStore.App_Start

namespace GameStoreApp.App_Start
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(null, "list/{category}/{page}",
                                        "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list/{page}", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list", "~/Pages/Listing.aspx");

            // Обратите внимание что это именованный маршрут
            routes.MapPageRoute("cart", "cart", "~/Pages/CartView.aspx");

            routes.MapPageRoute("checkout", "checkout", "~/Pages/Checkout.aspx");
        }

    }
}