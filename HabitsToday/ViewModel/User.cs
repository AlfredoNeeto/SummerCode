using HabitsToday.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace HabitsToday.ViewModel
{
    public class User
    {
        public void RegisterUser(USERS pUsuario)
        {
            using (HabitsTodayEntities dc = new HabitsTodayEntities())
            {
                dc.USERS.Add(pUsuario);
                dc.SaveChanges();
            }
        }
         
        public USERS QueryUser(string pEmail, string pSenha)
        {
            using (HabitsTodayEntities dc = new HabitsTodayEntities())
            {
                return dc.USERS.FirstOrDefault(p => p.EMAIL == pEmail && p.PASSWORD == pSenha);
            }
        }

        public List<USERS> GetUser(string pEmail)
        {
            using (HabitsTodayEntities dc = new HabitsTodayEntities())
            {
                return dc.USERS.Where(p => p.EMAIL == pEmail).ToList();
            }
        }


    }
}