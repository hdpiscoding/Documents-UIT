using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLSV
{
    public partial class DangNhap : Form
    {
        public DangNhap()
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
        public bool CheckAccount(string account, string password)
        {
            int linecount = File.ReadLines("D:\\UIT\\Visual Programming\\WinForm C#\\QLSV\\QLSV\\username_password.txt").Count();
            using (FileStream fs = new FileStream("D:\\UIT\\Visual Programming\\WinForm C#\\QLSV\\QLSV\\username_password.txt",FileMode.Open,FileAccess.Read))
            {
                StreamReader sr = new StreamReader(fs);
                for (int i = 1;i<=linecount;i++)
                {
                    string[] temp = sr.ReadLine().Split(' ');
                    if (temp[0] == account && temp[1] == password)
                    {
                        return true;
                    }
                }
            }
            return false;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (!CheckAccount(textBox1.Text, textBox2.Text))
            {
                MessageBox.Show("Username or password is incorrect!");
            }
            else
            {
                this.Hide();
                DanhMucTN f2 = new DanhMucTN();
                f2.ShowDialog();
                this.Show();
            }
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void DangNhap_Load(object sender, EventArgs e)
        {

            if (!(File.Exists(GetUsernamePath())))
            {
                using (FileStream fs = new FileStream(GetUsernamePath(), FileMode.Create, FileAccess.Write))
                {
                    StreamWriter sw = new StreamWriter(fs);
                    sw.WriteLine("admin 123456");
                    sw.Flush();
                }
            }
        }

        private void label5_Click(object sender, EventArgs e)
        {
            this.Hide();
            CreateAccount createAccount = new CreateAccount();
            createAccount.ShowDialog();
            this.Show();
        }
    }
}
