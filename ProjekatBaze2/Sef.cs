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
    
    public partial class Sef : Radnik
    {
        public int DirektorIdRad { get; set; }
        public SefTip Odsek { get; set; }
    
        public virtual Direktor Direktor { get; set; }
    }
}
