using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DoAnLapTrinhWed_2.Models
{
    public partial class ModelLinhKienContext : DbContext
    {
        public ModelLinhKienContext()
            : base("name=ModelLinhKienContext")
        {
        }

        public virtual DbSet<Brand> Brands { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<NCC> NCCs { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<AspNetUserRole> AspNetUserRole { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>()
                .Property(e => e.Slug)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Avartar)
                .IsFixedLength();

            modelBuilder.Entity<Product>()
                .Property(e => e.Avartar1)
                .IsFixedLength();

            modelBuilder.Entity<Product>()
                .Property(e => e.Avartar2)
                .IsFixedLength();

            modelBuilder.Entity<Product>()
                .Property(e => e.Avartar3)
                .IsFixedLength();

            modelBuilder.Entity<Product>()
                .HasMany(e => e.OrderDetails)
                .WithRequired(e => e.Product)
                .WillCascadeOnDelete(false);
        }
    }
}
