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
    
    public partial class Upotrebljava
    {
        public int RadnikZaMasinomIdRad { get; set; }
        public int MasinaSrBrMsn { get; set; }
    
        public virtual RadnikZaMasinom RadnikZaMasinom { get; set; }
        public virtual Masina Masina { get; set; }
    }
}