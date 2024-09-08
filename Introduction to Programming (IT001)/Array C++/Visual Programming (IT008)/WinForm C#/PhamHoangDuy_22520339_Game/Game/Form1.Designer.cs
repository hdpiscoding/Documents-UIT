namespace Game
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Timergame = new System.Windows.Forms.Timer(this.components);
            this.TimerAdd = new System.Windows.Forms.Timer(this.components);
            this.TimerAttack = new System.Windows.Forms.Timer(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.diem = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // Timergame
            // 
            this.Timergame.Interval = 10;
            this.Timergame.Tick += new System.EventHandler(this.timergame_Tick);
            // 
            // TimerAdd
            // 
            this.TimerAdd.Interval = 1000;
            this.TimerAdd.Tick += new System.EventHandler(this.TimerAdd_Tick);
            // 
            // TimerAttack
            // 
            this.TimerAttack.Interval = 2000;
            this.TimerAttack.Tick += new System.EventHandler(this.TimerAttack_Tick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(14, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Time :";
            // 
            // diem
            // 
            this.diem.AutoSize = true;
            this.diem.BackColor = System.Drawing.Color.Transparent;
            this.diem.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.diem.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.diem.Location = new System.Drawing.Point(74, 23);
            this.diem.Name = "diem";
            this.diem.Size = new System.Drawing.Size(59, 20);
            this.diem.TabIndex = 1;
            this.diem.Text = "label2";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.ClientSize = new System.Drawing.Size(1780, 853);
            this.Controls.Add(this.diem);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Paint += new System.Windows.Forms.PaintEventHandler(this.Form1_Paint);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.Form1_KeyDown);
            this.KeyUp += new System.Windows.Forms.KeyEventHandler(this.Form1_KeyUp);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Timer Timergame;
        private System.Windows.Forms.Timer TimerAdd;
        private System.Windows.Forms.Timer TimerAttack;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label diem;
    }
}

