//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjekatBaze2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Priprema
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Priprema()
        {
            this.Materijal = new HashSet<Materijal>();
            this.SefPripreme = new HashSet<SefPripreme>();
            this.TrakaUPripremi = new HashSet<TrakaUPripremi>();
        }
    
        public int OznPrip { get; set; }
        public int KolPrpMat { get; set; }
        public int BrRadPrip { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Materijal> Materijal { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SefPripreme> SefPripreme { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrakaUPripremi> TrakaUPripremi { get; set; }
    }
}