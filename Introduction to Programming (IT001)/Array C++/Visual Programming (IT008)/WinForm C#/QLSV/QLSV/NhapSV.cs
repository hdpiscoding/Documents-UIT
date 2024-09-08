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
    public partial class NhapSV : Form
    {
        public NhapSV()
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

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text=="" || textBox1.Text=="" ||textBox2.Text=="" ||textBox3.Text=="" ||textBox4.Text=="" ||textBox5.Text=="")
            {
                MessageBox.Show("Infomation is missing, please re-enter student information!");
                return;
            }

            string dtb = ((Double.Parse(textBox3.Text) + Double.Parse(textBox4.Text) + Double.Parse(textBox5.Text)) / 3).ToString();


            using (FileStream fs = new FileStream(GetStudentStoragePath(), FileMode.Append, FileAccess.Write))
            {
                StreamWriter sw = new StreamWriter(fs);
                sw.WriteLine($"{comboBox1.Text},{textBox1.Text},{textBox2.Text},{textBox3.Text},{textBox4.Text},{textBox5.Text},{dtb}");
                sw.Flush();
            }

            MessageBox.Show("Add success!");
            comboBox1.Text = "";
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
