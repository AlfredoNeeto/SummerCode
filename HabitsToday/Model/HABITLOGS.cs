//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HabitsToday.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class HABITLOGS
    {
        public int IDHABITLOGS { get; set; }
        public int IDUSER { get; set; }
        public int IDHABITS { get; set; }
        public System.DateTime DATE { get; set; }
        public bool ISCOMPLETED { get; set; }
    
        public virtual HABITS HABITS { get; set; }
        public virtual USERS USERS { get; set; }
    }
}
