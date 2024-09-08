using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace QLSV
{
    public partial class CreateAccount : Form
    {
        public CreateAccount()
        {
            InitializeComponent();
        }

        public string GetUsernamePath()
        {
            int count = 0;
            string currentPath = Application.StartupPath;
            for (int i = currentPath.Length - 1; i >= 0; i--)
            {
                if (currentPath[i] == '\\')
                {
                    count++;
                    if (count == 2)
                    {
                        break;
                    }
                    else
                    {
                        currentPath = currentPath.Remove(i, 1);
                    }
                }
                else
                {
                    currentPath = currentPath.Remove(i, 1);
                }
            }
            currentPath += "username_password.txt";
            return currentPath;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            bool flag = false;
            int linecount = File.ReadLines(GetUsernamePath()).Count();
            using (FileStream fs = new FileStream(GetUsernamePath(), FileMode.Open, FileAccess.Read)) 
            {
                StreamReader sr = new StreamReader(fs);
                for (int i=1;i<=linecount;i++)
                {
                    string[] temp = sr.ReadLine().Split(' ');
                    if(textBox1.Text == temp[0])
                    {
                        flag = true;
                        break;
                    }
                }
            }
            if (flag)
            {
                MessageBox.Show($"Username: \"{textBox1.Text}\" already exists! Please choose another username!");
            }
            else
            {
                if(textBox2.Text != textBox3.Text)
                {
                    MessageBox.Show("Password and Confirm password not matched!");
                }
                else
                {
                    using (FileStream fs = new FileStream(GetUsernamePath(),FileMode.Append,FileAccess.Write))
                    {
                        StreamWriter sw = new StreamWriter(fs);
                        sw.WriteLine(textBox1.Text + " " + textBox2.Text);
                        sw.Flush();
                    }
                    MessageBox.Show("Register successfully!");
                    this.Close();
                }
            }
        }
    }
}
