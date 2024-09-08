using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SetTimer
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string hour = string.Empty;
            string minute = string.Empty;
            string second = string.Empty;
            int a;
            
            if(Int32.TryParse(textBox1.Text,out a))
            {
                if(a >= 0 && a < 11)
                {
                    if(textBox1.Text.Length == 1)
                    {
                        hour = '0' + textBox1.Text;
                    }
                    else
                    {
                        hour = textBox1.Text;
                    }
                }
                else
                {
                    MessageBox.Show("Hour error!");
                    textBox1.Text = string.Empty;
                    textBox2.Text = string.Empty;
                    textBox3.Text = string.Empty;
                    return;
                }
            }
            else
            {
                MessageBox.Show("Please enter number!");
                textBox1.Text = string.Empty;
                textBox2.Text = string.Empty;
                textBox3.Text = string.Empty;
                return;
            }

            if (Int32.TryParse(textBox2.Text, out a))
            {
                if (a >= 0 && a < 60)
                {
                    if (textBox2.Text.Length == 1)
                    {
                        minute = '0' + textBox2.Text;
                    }
                    else
                    {
                        minute = textBox2.Text;
                    }
                }
                else
                {
                    MessageBox.Show("Minute error!");
                    textBox1.Text = string.Empty;
                    textBox2.Text = string.Empty;
                    textBox3.Text = string.Empty;
                    return;
                }
            }
            else
            {
                MessageBox.Show("Please enter number!");
                textBox1.Text = string.Empty;
                textBox2.Text = string.Empty;
                textBox3.Text = string.Empty;
                return;
            }

            if (Int32.TryParse(textBox3.Text, out a))
            {
                if (a >= 0 && a < 60)
                {
                    if (textBox3.Text.Length == 1)
                    {
                        second = '0' + textBox3.Text;
                    }
                    else
                    {
                        second = textBox3.Text;
                    }
                }
                else
                {
                    MessageBox.Show("Second error!");
                    textBox1.Text = string.Empty;
                    textBox2.Text = string.Empty;
                    textBox3.Text = string.Empty;
                    return;
                }
            }
            else
            {
                MessageBox.Show("Please enter number!");
                textBox1.Text = string.Empty;
                textBox2.Text = string.Empty;
                textBox3.Text = string.Empty;
                return;
            }

            string[] strings = { hour, minute, second };
            label5.Text = string.Join(":", strings);

            timer1.Enabled = true;
            timer1.Start();
        }

        void TimerOnClick(object sender, EventArgs e)
        {

        }
    }
}
