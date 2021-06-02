using ProgettiUI.ViewModel;
using ProjekatBaze2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ProgettiUI.View
{
    /// <summary>
    /// Interaction logic for DirektorView.xaml
    /// </summary>
    public partial class DirektorView : Window
    {
        public DirektorView()
        {
           
            InitializeComponent();
            this.DataContext = new DirektorViewModel();
        }

        private void ButtonDodaj_Click(object sender, RoutedEventArgs e)
        {
            AddUpdateDirektor aud = new AddUpdateDirektor();
            aud.Show();
        }

        private Direktor selektovaniDirektor;
        public Direktor SelektovaniDirektor
        {
            get { return selektovaniDirektor; }
            set { selektovaniDirektor = value; }
        }

  
        private void ButtonIzmeni_Click(object sender, RoutedEventArgs e)
        {
            AddUpdateDirektor aud = new AddUpdateDirektor(SelektovaniDirektor);
            aud.Show();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
               
        }
    }
}
