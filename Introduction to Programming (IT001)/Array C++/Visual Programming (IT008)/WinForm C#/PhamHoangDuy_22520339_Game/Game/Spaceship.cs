using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Random;

namespace Game
{
    
    public class Spaceship : Object
    {
        Bitmap flip;

        public Spaceship(int x, int y)
        {
            this.x = x;
            this.y = y;
            item = Properties.Resources.battlespaceship;
            flip = new Bitmap(Properties.Resources.battlespaceship);
            width = 60;
            height = 90;
        }
        public void DrawObject(Graphics e, int flag)
        {
            if(flag == 1)
                e.DrawImage(item, (float)x, (float)y, width, height);
            else
                e.DrawImage(flip, (float)x, (float)y, width, height);
        }
        public void move(int choice, int maxwidth, int maxheight, double X, double Y)
        {
            switch (choice)
            {
                case 1:
                    x = x - X;
                    if (x < 0)
                        x = 0;
                    break;
                case 2:
                    x = x + X;
                    if (x + width > maxwidth)
                        x = maxwidth - width;
                    break;
                case 3:
                    y = y - Y;
                    if (y < 0)
                        y = 0;
                    break;
                case 4:
                    y = y + Y;
                    if (y + height > maxheight)
                        y = maxheight - height;
                    break;
            }
        }

    }
}
