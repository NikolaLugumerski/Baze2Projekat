using ProgettiUI.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgettiUI.ViewModel
{
    public class NavigationViewModel
    {
        public ShowDirektorCommand  ShowDirektorCommand { get; set; }

        public NavigationViewModel()
        {
            ShowDirektorCommand = new ShowDirektorCommand();
        }

    }
}
