using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Game
{
   public class Enemies:Object
    {
        public Enemies(int x)
        {
            this.x = x;
            this.y = -75;
            item = Properties.Resources.Meteorite;
            width = 50;
            height = 70;
        }
        public void Drop(double speed)
        {
            y += speed;
        }

       
    }
}
