using ProgettiUI.ViewModel;
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
    /// Interaction logic for AddUpdateDirektor.xaml
    /// </summary>
    public partial class AddUpdateDirektor : Window
    {
        public AddUpdateDirektor()
        {
            this.DataContext = new AddDirektorViewModel();
            InitializeComponent();
        }
    }
}
