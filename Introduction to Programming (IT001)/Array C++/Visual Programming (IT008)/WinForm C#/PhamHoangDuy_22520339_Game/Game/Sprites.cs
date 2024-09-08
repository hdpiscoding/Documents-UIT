using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace Game
{
    public class Sprites
    {
        int _height;
        int _width;
        double _x;
        double _y;
        int iSprite;
        List<Bitmap> ListSprites;
        int nSprite;
        bool locked;

        public Sprites(List<Bitmap> ListSprites, double x, double y)
        {
            this.ListSprites = ListSprites;
            this._x = x;
            this._y = y;
            nSprite = this.ListSprites.Count;
            iSprite = 0;
            locked = true;
        }

        public void DrawSprite(Graphics e)
        {
            if (iSprite < nSprite * 10)
            {
                e.DrawImage(ListSprites[iSprite / 10], (float)_x, (float)_y, 150, 150);
            }
            else
            {
                iSprite = 0;
                locked = true;
            }
        }

        public void Update()
        {
            iSprite = iSprite + 1;
        }

        public void setlock(bool locked)
        { 
            this.locked = locked;
        }

        public bool islocked() 
        { 
            return locked; 
        }
    }
}

