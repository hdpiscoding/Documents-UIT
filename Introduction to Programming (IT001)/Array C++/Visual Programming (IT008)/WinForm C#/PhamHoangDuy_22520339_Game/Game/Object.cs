using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Game
{
    public class Object
    {
        protected Bitmap item;
        public double x;
        public double y;
        protected int width;
        protected int height;
        public void DrawObject(Graphics e)
        {
            e.DrawImage(item, (float)x, (float)y, width, height);
        }
        public bool IntersectCheck(Object other)
        {
            if (this.x < other.x + other.width && 
                this.x + this.width > other.x && 
                this.y-10 < other.y + other.height &&
                this.y-10 + this.height > other.y)
            {
                return true;
            }
            return false;
        }
    }
}
