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
    
    public partial class GotovProizvod
    {
        public int SrBrPr { get; set; }
        public int Cena { get; set; }
        public int DuzPr { get; set; }
        public int SirPr { get; set; }
        public int ProizvodnjaOznProiz { get; set; }
    
        public virtual Proizvodnja Proizvodnja { get; set; }
    }
}
