﻿namespace Recursos_Humanos.Mantenimientos
{
    partial class Frm_mantConceptos
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
            this.Txt_Sig = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.White;
            this.navegador1.Location = new System.Drawing.Point(1, 0);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1236, 661);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.Navegador1_Load);
            this.navegador1.MouseHover += new System.EventHandler(this.Navegador1_MouseHover);
            // 
            // Txt_Sig
            // 
            this.Txt_Sig.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.Txt_Sig.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Txt_Sig.Location = new System.Drawing.Point(254, 193);
            this.Txt_Sig.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Txt_Sig.Name = "Txt_Sig";
            this.Txt_Sig.Size = new System.Drawing.Size(24, 12);
            this.Txt_Sig.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.White;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(142, 191);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(104, 15);
            this.label1.TabIndex = 3;
            this.label1.Text = "Siguiente Codigo:";
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(442, 256);
            this.button1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(104, 27);
            this.button1.TabIndex = 5;
            this.button1.Text = "APLICA A:";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.Button1_Click);
            // 
            // Frm_mantConceptos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1220, 640);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.Txt_Sig);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.navegador1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "Frm_mantConceptos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_mantConceptos";
            this.Load += new System.EventHandler(this.Frm_mantConceptos_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaDeDiseno.Navegador navegador1;
        private System.Windows.Forms.TextBox Txt_Sig;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
    }
}