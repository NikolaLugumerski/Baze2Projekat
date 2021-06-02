using ProgettiUI.Commands;
using ProjekatBaze2;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgettiUI.ViewModel
{
    public class DirektorViewModel : INotifyPropertyChanged
    {
        private List<Direktor> direktori;
        public List<Direktor> Direktori
        {

            get
            {

                return direktori;
            }

            set
            {
                direktori = value;
                OnPropertyChanged("Direktori");

            }
        }


        private Direktor selektovaniDirektor;
        public Direktor SelektovaniDirektor
        {
            get { return selektovaniDirektor; }
            set 
            { 
                selektovaniDirektor = value;
                OnPropertyChanged("SelektovaniDirektor");
            }
        }

        public RefreshDirektorCommand RefreshDirektorCommand { get; set; }
        public DirektorViewModel()
        {
            RefreshDirektorCommand RefreshDirektorCommand = new RefreshDirektorCommand(Direktori);
         
        }



        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
}

