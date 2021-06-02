using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjekatBaze2.Repositories
{
    public interface IDirektorRepository
    {
        Direktor FindById(int id);
        List<Radnik> GetList();
        void Add(Direktor direktor);
        void Remove(int id);
        void Update(Direktor direktor);
    }


}
