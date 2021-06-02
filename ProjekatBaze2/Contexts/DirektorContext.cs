using ProjekatBaze2.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjekatBaze2.Contexts
{
    public class DirektorContext : IDirektorRepository
    {

        public ModelDBContext ModelDBContext { get; set; }
        public DirektorContext()
        {
            ModelDBContext = new ModelDBContext();
        }
      
        public void Add(Direktor direktor)
        {
            ModelDBContext.RadnikSet.Add(direktor);
            ModelDBContext.Entry(direktor).State = System.Data.Entity.EntityState.Added;
            ModelDBContext.SaveChanges();
        }

        public Direktor FindById(int id)
        {
            return (Direktor)ModelDBContext.RadnikSet.Find(id);
        }

        public List<Radnik> GetList()
        {
            return ModelDBContext.RadnikSet.Where(x => x.Tip == TipRadnika.DIREKTOR).ToList();
        }

        public void Remove(int id)
        {
            Direktor dir = FindById(id);
            ModelDBContext.RadnikSet.Remove(dir);
            ModelDBContext.Entry(dir).State = System.Data.Entity.EntityState.Deleted;
            ModelDBContext.SaveChanges();
        }

        public void Update(Direktor direktor)
        {
            ModelDBContext.RadnikSet.Attach(direktor);
            ModelDBContext.Entry(direktor).State = System.Data.Entity.EntityState.Modified;
            ModelDBContext.SaveChanges();
        }
    }
}
