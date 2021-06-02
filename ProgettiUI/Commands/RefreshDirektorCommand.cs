using ProjekatBaze2;
using ProjekatBaze2.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace ProgettiUI.Commands
{
    public class RefreshDirektorCommand : ICommand
    {
        private List<Direktor> direktori;

        public List<Direktor> Direktori
        {
            get { return direktori; }
            set { direktori = value; }
        }
        public RefreshDirektorCommand(List<Direktor> direktori)
        {
            Direktori = direktori;

        }



        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
    
            DirektorContext direktorContext = new DirektorContext();
            Direktori = direktorContext.GetList().ConvertAll(x => x as Direktor);

                 

        }

        protected void RaiseCanExecuteChanged()
        {
            CommandManager.InvalidateRequerySuggested();
        }
    }
}
