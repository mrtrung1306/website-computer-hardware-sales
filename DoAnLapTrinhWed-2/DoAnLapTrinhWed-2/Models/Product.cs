namespace DoAnLapTrinhWed_2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web;
    using System.Xml.Serialization;

    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }
        [NotMapped]
        public IEnumerable<HttpPostedFileBase> ImageFile { get; set; }
        public int Id { get; set; }

        [StringLength(100)]
        
        public string Name { get; set; }

        [StringLength(50)]
        public string Avartar { get; set; }

        [StringLength(50)]
        public string Avartar1 { get; set; }

        [StringLength(50)]
        public string Avartar2 { get; set; }

        [StringLength(50)]
        public string Avartar3 { get; set; }

        [StringLength(500)]
        public string ShortDes { get; set; }

        public double? Price { get; set; }

        [StringLength(50)]
        public string TinhTrang { get; set; }

        [StringLength(50)]
        public string BaoHanh { get; set; }

        public int? BrandId { get; set; }

        public int? NCCId { get; set; }

        public virtual Brand Brand { get; set; }

        public virtual NCC NCC { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
