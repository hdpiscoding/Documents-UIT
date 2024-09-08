using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Simple_Menu
{
    public partial class Form1 : Form
    {
        MainMenu mMenu;
        MenuItem mFile;
        MenuItem mAbout;
        MenuItem miFileOpen;
        MenuItem miSearch;

        public Form1()
        {
            InitializeComponent();
            mMenu = new MainMenu();
            mFile = new MenuItem();
            mAbout = new MenuItem();
            mFile.Text = "Students";
            mAbout.Text = "About";
            miFileOpen = new MenuItem();
            miFileOpen.Text = "New";
            miFileOpen.Click += new EventHandler(miFileOpen_Click);
            miSearch = new MenuItem();
            miSearch.Text = "Search";
            miSearch.Click += new EventHandler(miSearch_Click);
            mFile.MenuItems.Add(miFileOpen);
            mFile.MenuItems.Add(miSearch);
            mMenu.MenuItems.Add(mFile);
            mMenu.MenuItems.Add(mAbout);
            this.Menu = mMenu;
        }

        void miFileOpen_Click(Object sender, EventArgs e)
        {
            MessageBox.Show("New Student!");
        }
        void miSearch_Click(Object sender, EventArgs e)
        {
            MessageBox.Show("Search Student!");
        }

    }
}
