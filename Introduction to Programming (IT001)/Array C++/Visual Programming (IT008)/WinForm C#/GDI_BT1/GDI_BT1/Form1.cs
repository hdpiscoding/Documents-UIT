using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GDI_BT1
{
    public partial class Form1 : Form
    {
        bool rec = false, tri = false, eclp = false;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_MouseClick(object sender, MouseEventArgs e)
        {
            if (rec)
            {
                Random rand = new Random();
                Graphics g = this.CreateGraphics();
                float height = rand.Next(0, 300);
                float width = rand.Next(0, 300);
                float x = e.X - width / 2;
                float y = e.Y - height / 2;
                Color color = Color.FromArgb(rand.Next(0, 255), rand.Next(0, 255), rand.Next(0, 255));
                Pen pen = new Pen(color);
                g.DrawRectangle(pen, x, y, width, height);

            }
            else if (tri)
            {

            }
            else
            {

            }
        }

        private void rectangleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            rec = true;
            tri = false;
            eclp = false;
        }

        private void triangleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tri = true;
            rec = false;
            eclp = false;
        }

        private void eclipseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            eclp = true;
            rec = false;
            tri = false;
        }
    }
}
