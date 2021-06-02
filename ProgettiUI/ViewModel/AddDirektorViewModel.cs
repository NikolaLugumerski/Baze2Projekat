﻿using ProgettiUI.Commands;
using ProjekatBaze2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgettiUI.ViewModel
{
    public class AddDirektorViewModel
    {
        private Direktor direktor;

        public Direktor Direktor
        {
            get { return direktor; }
            set { direktor = value; }
        }
        
        public AddDirektorCommand  AddDirektorCommand { get; set; }

        public AddDirektorViewModel()
        {
            AddDirektorCommand = new AddDirektorCommand(Direktor);

        }

    }
}
