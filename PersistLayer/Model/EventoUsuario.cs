//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PersistLayer.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class EventoUsuario
    {
        public int ID { get; set; }
        public int Usuario_ID { get; set; }
        public int Evento_ID { get; set; }
    
        public virtual Evento Evento { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
