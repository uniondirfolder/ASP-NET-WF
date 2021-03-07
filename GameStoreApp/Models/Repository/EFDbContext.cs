using System.Data.Entity;

namespace GameStoreApp.Models.Repository
{
    public class EFDbContext:DbContext
    {
        public DbSet<Game> Games { get; set; }
    }
}