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
    public partial class TimKiemSV : Form
    {
        public TimKiemSV()
        {
            InitializeComponent();
        }

        public string GetStudentStoragePath()
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
            currentPath += "StudentStorage.txt";
            return currentPath;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            bool flag;
            int linecount = File.ReadLines(GetStudentStoragePath()).Count();
            using (FileStream fs = new FileStream(GetStudentStoragePath(), FileMode.Open, FileAccess.Read))
            {
                flag = false;
                StreamReader sr = new StreamReader(fs);
                for (int i = 1; i <= linecount; i++)
                {
                    string[] temp = sr.ReadLine().Split(',');
                    textBox2.Text = "";
                    textBox3.Text = "";
                    textBox4.Text = "";
                    textBox5.Text = "";
                    textBox6.Text = "";
                    textBox7.Text = "";
                    textBox8.Text = "";
                    if (textBox1.Text == temp[1] || textBox1.Text == temp[2])
                    {
                        textBox2.Text = temp[1];
                        textBox3.Text = temp[2];
                        textBox8.Text = temp[0];
                        textBox4.Text = temp[3];
                        textBox6.Text = temp[4];
                        textBox5.Text = temp[5];
                        textBox7.Text = temp[6];
                        flag = true;
                        break;
                    }
                }
                if (!flag)
                {
                    MessageBox.Show("Student not found!");
                }
            }
        }
    }
}
