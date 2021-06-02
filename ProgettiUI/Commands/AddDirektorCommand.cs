using ProjekatBaze2;
using ProjekatBaze2.Contexts;
using ProjekatBaze2.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace ProgettiUI.Commands
{
    public class AddDirektorCommand : ICommand
    {
        private Direktor direktor;

        public Direktor Direktor
        {
            get { return direktor; }
            set { direktor = value; }
        }

        public AddDirektorCommand(Direktor direktor)
        {
            Direktor = direktor;
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }
        protected void RaiseCanExecuteChanged()
        {
            CommandManager.InvalidateRequerySuggested();
        }
        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            Direktor.Tip = TipRadnika.DIREKTOR;
            DirektorContext direktorContext = new DirektorContext();
            direktorContext.Add(Direktor);

        }



    }
}
