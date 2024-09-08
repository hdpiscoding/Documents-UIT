using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar;

namespace RandBall_Game
{
    public partial class Level1 : Form
    {
        public Level1()
        {
            InitializeComponent();
        }

        static public float x = 0;
        static public float y = 0;
        private void Level1_MouseClick(object sender, MouseEventArgs e)
        {
            x = e.X;
            y = e.Y;
            Random random = new Random();
            Graphics g = this.CreateGraphics();
            float r = 30;
            int rcolor = random.Next(1, 8);
            Color color = new Color();
            switch (rcolor)
            {
                case 1:
                    {
                        color = Color.Violet;
                    }
                    break;
                case 2:
                    {
                        color = Color.Indigo;
                    }
                    break;
                case 3:
                    {
                        color = Color.Blue;
                    }
                    break;
                case 4:
                    {
                        color = Color.Green;
                    }
                    break;
                case 5:
                    {
                        color = Color.Yellow;
                    }
                    break;
                case 6:
                    {
                        color = Color.Orange;
                    }
                    break;
                case 7:
                    {
                        color = Color.Red;
                    }
                    break;
            }
            SolidBrush brush = new SolidBrush(color);
            g.DrawEllipse(new Pen(Color.Red), x, y, r, r);

        }

        private void Level1_Paint(object sender, PaintEventArgs e)
        {
            Random random = new Random();
            Graphics g = e.Graphics;
            float r = 30;
            int rcolor = random.Next(1, 8);
            Color color = new Color();
            switch (rcolor)
            {
                case 1:
                    {
                        color = Color.Violet;
                    }
                    break;
                case 2:
                    {
                        color = Color.Indigo;
                    }
                    break;
                case 3:
                    {
                        color = Color.Blue;
                    }
                    break;
                case 4:
                    {
                        color = Color.Green;
                    }
                    break;
                case 5:
                    {
                        color = Color.Yellow;
                    }
                    break;
                case 6:
                    {
                        color = Color.Orange;
                    }
                    break;
                case 7:
                    {
                        color = Color.Red;
                    }
                    break;
            }
            SolidBrush brush = new SolidBrush(color);
            g.DrawEllipse(new Pen(Color.Red), x, y, r, r);
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            x = (x + 1) % 200; y = (y + 1) % 200;
            Refresh();
        }
    }
}
