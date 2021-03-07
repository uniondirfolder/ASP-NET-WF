using System.Data.Entity;

namespace GameStoreApp.Models.Repository
{
    public class EFDbContext:DbContext
    {
        public DbSet<Game> Games { get; set; }
        public DbSet<Order> Orders { get; set; }
    }
}