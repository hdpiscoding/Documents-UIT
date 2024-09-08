using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Game
{
    public class bullet: Object
    {
        public bullet(double x,double y)
        {
            this.x = x;
            this.y = y;
            item = Properties.Resources.Bullet;
            this.width = 23;
            this.height = 36;
        }
        public void attackspeed(double movespeed)
        {
            y = y - movespeed;
        }
    }
}
