using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BaiTap3._1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.KeyDown += new KeyEventHandler(Form1_KeyDown);
        }


        string result = string.Empty;

        private void Form1_KeyDown(object sender, KeyEventArgs e)
        {
            Keys keyCode = e.KeyCode;
            result += $"You pressed the {keyCode.ToString()} key!\n";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string currentPath = Application.StartupPath +"\\result.txt";
            using (FileStream fs = new FileStream(currentPath, FileMode.Create, FileAccess.Write))
            {
                StreamWriter sw = new StreamWriter(fs);
                sw.Write(result);
                sw.Flush();
            }
            this.Close();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
