using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Game
{
    public partial class Form1 : Form
    {
        int count;
        
        double x2, y2, attackspeed;
        double x1;
        double  y1;
        bool lose;
        int flag;
        Spaceship spaceship;
        double movespeed;
        double dropspeed;
        private bool isMovingLeft;
        private bool isMovingRight;
        private bool isMovingUp;
        private bool isMovingDown;
        List<Enemies> listbamboo;
        List<bullet>   listbullets;
        Sprites sprites;
        Random random;
        List<Bitmap> bitmaps;
        public Form1()
        {
            InitializeComponent();
            start();
            this.DoubleBuffered = true;
            bitmaps = new List<Bitmap>();

            bitmaps.Add(Properties.Resources.booming_1);
            bitmaps.Add(Properties.Resources.booming_2);
            bitmaps.Add(Properties.Resources.booming_3);
            bitmaps.Add(Properties.Resources.booming_4);
            bitmaps.Add(Properties.Resources.booming_5);
            bitmaps.Add(Properties.Resources.booming_6);
            bitmaps.Add(Properties.Resources.booming_7);
        }

        public void start()
        {
             count = 0;
            
            diem.Text = count.ToString();
            TimerAdd.Interval = 1000;
            lose = false;
            isMovingLeft = false;
            isMovingRight = false;
            isMovingUp = false;
            isMovingDown = false;
            spaceship = new Spaceship(ClientSize.Width / 2, ClientSize.Height / 2);
            movespeed = 4.0;
            dropspeed = 2.5;
            attackspeed = 5;
            listbamboo = new List<Enemies>();
            flag = 1;
            Timergame.Start();
            TimerAdd.Start();
            TimerAttack.Start();
            random = new Random();
            int x = random.Next(0, ClientSize.Width - 100);
            listbullets = new List<bullet>();
            listbamboo.Add(new Enemies(x));
     
        }
        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;
            spaceship.DrawObject(g, flag);

            foreach (Object item in listbamboo)
            {
                item.DrawObject(g);
            }

            if(lose && !sprites.islocked())
            {
                sprites.DrawSprite(g);
                booming();
            }

            foreach (Object item in listbullets)
            {
                item.DrawObject(g);
            }


        }
        private void timergame_Tick(object sender, EventArgs e)
        {
            if (!lose)
            {
                count++;
            }
            diem.Text = ((float)count/100).ToString();
            if (isMovingLeft)
            {
                spaceship.move(1, ClientSize.Width, ClientSize.Height, movespeed, 0);
            }
            else if (isMovingRight)
            {
                spaceship.move(2, ClientSize.Width, ClientSize.Height, movespeed, 0);
            }

            if (isMovingUp)
            {
                spaceship.move(3, ClientSize.Width, ClientSize.Height, 0, movespeed);
            }
            else if (isMovingDown)
            {
                spaceship.move(4, ClientSize.Width, ClientSize.Height, 0, movespeed);
            }
            
            List<Enemies> removing = new List<Enemies>();
            foreach (Enemies item in listbamboo)
            {
                if (item.y > ClientSize.Height)
                    removing.Add(item);
                item.Drop(dropspeed);
                if (item.IntersectCheck(spaceship))
                {
                    listbamboo.Remove(item);
                   
                    x1 = spaceship.x;
                    y1 = spaceship.y;

                    sprites = new Sprites(bitmaps, x1, y1);
                    sprites.setlock(false);

                    lose = true;
                    isMovingLeft = false;
                    isMovingRight = false;
                    isMovingUp = false;
                    isMovingDown = false;
                    TimerAdd.Stop();

                    listbamboo.Clear();

                   DialogResult result= MessageBox.Show("Game Over","TryAgain",MessageBoxButtons.YesNo,MessageBoxIcon.Question);
                    if(result==DialogResult.Yes)
                    {
                        start();
                    }
                    else
                    {
                        Application.Exit();
                    }
                    break;
                };
                x2=spaceship.x;
                y2=spaceship.y;
            }
            foreach (Enemies item in removing)
                listbamboo.Remove(item);
            foreach(bullet item in listbullets)
            {
                item.attackspeed(attackspeed);
                for (int i = listbamboo.Count - 1; i >= 0; i--)
                {
                    Enemies bamboo = listbamboo[i];
                    if (item.IntersectCheck(bamboo))
                    {
                        listbamboo.RemoveAt(i);
                        
                        
                    }
                }
               

            }
            if (movespeed <= 20)
                dropspeed += 0.003;
            if(movespeed<=10)
             movespeed+=0.002;

           

            this.Refresh();
            
        }
        public void booming()
        {
            sprites.Update();
        }
       
        private void Form1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.A)
            {
                isMovingLeft = true;
                flag = 1;
            }
            else if (e.KeyCode == Keys.D)
            {
                isMovingRight = true;
                flag = 0;
            }
            else if (e.KeyCode == Keys.W)
            {
                isMovingUp = true;
            }
            else if (e.KeyCode == Keys.S)
            {
                isMovingDown = true;
            }
        }

        private void TimerAttack_Tick(object sender, EventArgs e)
        {
            listbullets.Add(new bullet(x2 + 30, y2 - 30));

            if (TimerAdd.Interval > 100)
            {
                TimerAdd.Interval -= 50;
            }
        }

        private void Form1_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.A)
            {
                isMovingLeft = false;
            }
            else if (e.KeyCode == Keys.D)
            {
                isMovingRight = false;
            }
            else if (e.KeyCode == Keys.W)
            {
                isMovingUp = false;
            }
            else if (e.KeyCode == Keys.S)
            {
                isMovingDown = false;
            }
        }

        private void TimerAdd_Tick(object sender, EventArgs e)
        {
            int x = random.Next(0, ClientSize.Width - 100);

            listbamboo.Add(new Enemies(x));
        }
    }
}
