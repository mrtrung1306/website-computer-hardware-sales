namespace DoAnLapTrinhWed_2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Category")]
    public partial class Category
    {
        public int CategoryId { get; set; }

        [StringLength(100)]
        public string Name { get; set; }

        [StringLength(100)]
        public string Avatar { get; set; }

        [StringLength(50)]
        public string Slug { get; set; }

        public bool? ShowOnHomePage { get; set; }

        public int? DisplayOrder { get; set; }

        public DateTime? CreateOnUtc { get; set; }

        public DateTime? UpdateOnUtc { get; set; }

        public bool? Deleted { get; set; }

        public int? BrandId { get; set; }
    }
}
