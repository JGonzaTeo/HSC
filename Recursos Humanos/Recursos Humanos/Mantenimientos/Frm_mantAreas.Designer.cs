namespace Recursos_Humanos.Mantenimientos
{
    partial class Frm_mantAreas
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
            this.navegador1 = new CapaDeDiseno.Navegador();
            this.label1 = new System.Windows.Forms.Label();
            this.Txt_Sig = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.White;
            this.navegador1.Location = new System.Drawing.Point(-1, 0);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1571, 809);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.Navegador1_Load);
            this.navegador1.Click += new System.EventHandler(this.Navegador1_Click);
            this.navegador1.MouseHover += new System.EventHandler(this.Navegador1_MouseHover);
            this.navegador1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Navegador1_MouseMove);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.White;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(207, 240);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(124, 18);
            this.label1.TabIndex = 1;
            this.label1.Text = "Siguiente Codigo:";
            // 
            // Txt_Sig
            // 
            this.Txt_Sig.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.Txt_Sig.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Txt_Sig.Location = new System.Drawing.Point(356, 243);
            this.Txt_Sig.Name = "Txt_Sig";
            this.Txt_Sig.Size = new System.Drawing.Size(32, 15);
            this.Txt_Sig.TabIndex = 2;
            // 
            // Frm_mantAreas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1571, 813);
            this.Controls.Add(this.Txt_Sig);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.navegador1);
            this.Name = "Frm_mantAreas";
            this.Text = "Frm_mantAreas";
            this.Load += new System.EventHandler(this.Frm_mantAreas_Load);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Frm_mantAreas_MouseMove);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaDeDiseno.Navegador navegador1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox Txt_Sig;
    }
}