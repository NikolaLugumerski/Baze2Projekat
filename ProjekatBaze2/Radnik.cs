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
    
    public abstract partial class Radnik
    {
        public int IdRad { get; set; }
        public string Ime { get; set; }
        public string Prz { get; set; }
        public int Plt { get; set; }
        public TipRadnika Tip { get; set; }
    }
}