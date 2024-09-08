using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace temp
{
    public partial class Form1 : Form
    {
        private TextBox textBox;
        private Button endButton;
        private string filePath = "keylog.txt";

        public Form1()
        {
            InitializeComponent();
            InitializeTextBox();
            InitializeEndButton();
            HookKeyboardEvents();
        }

        private void InitializeTextBox()
        {
            textBox = new TextBox
            {
                Location = new System.Drawing.Point(50, 50),
                Size = new System.Drawing.Size(200, 30),
                ReadOnly = true
            };

            Controls.Add(textBox);
        }

        private void InitializeEndButton()
        {
            endButton = new Button
            {
                Text = "End",
                Location = new System.Drawing.Point(50, 100)
            };

            endButton.Click += EndButton_Click;

            Controls.Add(endButton);
        }

        private void HookKeyboardEvents()
        {
            KeyDown += Form1_KeyDown;
        }

        private void Form1_KeyDown(object sender, KeyEventArgs e)
        {
            string keyInfo = $"{DateTime.Now} - Key Pressed: {e.KeyCode}";
            textBox.AppendText(keyInfo + Environment.NewLine);
            WriteToFile(keyInfo);
        }

        private void EndButton_Click(object sender, EventArgs e)
        {
            UnhookKeyboardEvents();
        }

        private void UnhookKeyboardEvents()
        {
            KeyDown -= Form1_KeyDown;
        }

        private void WriteToFile(string text)
        {
            try
            {
                using (StreamWriter writer = new StreamWriter(filePath, true))
                {
                    writer.WriteLine(text);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("An error occurred while writing to file: " + ex.Message);
            }
        }
    }
}
