namespace Recursos_Humanos.Consultas
{
    partial class Frm_consultaCuenta
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.Btn_minimizar = new System.Windows.Forms.Button();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.Lbl_cuenta = new System.Windows.Forms.Label();
            this.Lbl_nombre = new System.Windows.Forms.Label();
            this.Lbl_debe = new System.Windows.Forms.Label();
            this.Lbl_haber = new System.Windows.Forms.Label();
            this.Txt_idCuenta = new System.Windows.Forms.TextBox();
            this.Txt_nombreCuenta = new System.Windows.Forms.TextBox();
            this.Btn_buscar = new System.Windows.Forms.Button();
            this.Txt_debe = new System.Windows.Forms.TextBox();
            this.Txt_haber = new System.Windows.Forms.TextBox();
            this.Btn_aceptar = new System.Windows.Forms.Button();
            this.Btn_cancelar = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.panel1.Controls.Add(this.Btn_minimizar);
            this.panel1.Controls.Add(this.Btn_salir);
            this.panel1.Controls.Add(this.Lbl_titulo);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(800, 52);
            this.panel1.TabIndex = 0;
            // 
            // Btn_minimizar
            // 
            this.Btn_minimizar.FlatAppearance.BorderSize = 0;
            this.Btn_minimizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_minimizar.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.Btn_minimizar.Location = new System.Drawing.Point(634, 8);
            this.Btn_minimizar.Name = "Btn_minimizar";
            this.Btn_minimizar.Size = new System.Drawing.Size(40, 40);
            this.Btn_minimizar.TabIndex = 5;
            this.Btn_minimizar.UseVisualStyleBackColor = true;
            this.Btn_minimizar.Click += new System.EventHandler(this.Btn_minimizar_Click);
            // 
            // Btn_salir
            // 
            this.Btn_salir.FlatAppearance.BorderSize = 0;
            this.Btn_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_salir.Image = global::Recursos_Humanos.Properties.Resources.icons8_cerrar_ventana_35;
            this.Btn_salir.Location = new System.Drawing.Point(720, 8);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(40, 40);
            this.Btn_salir.TabIndex = 5;
            this.Btn_salir.UseVisualStyleBackColor = true;
            this.Btn_salir.Click += new System.EventHandler(this.Btn_salir_Click);
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Century Gothic", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(13, 20);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(116, 28);
            this.Lbl_titulo.TabIndex = 2;
            this.Lbl_titulo.Text = "CUENTAS";
            // 
            // Lbl_cuenta
            // 
            this.Lbl_cuenta.AutoSize = true;
            this.Lbl_cuenta.Location = new System.Drawing.Point(155, 123);
            this.Lbl_cuenta.Name = "Lbl_cuenta";
            this.Lbl_cuenta.Size = new System.Drawing.Size(79, 21);
            this.Lbl_cuenta.TabIndex = 1;
            this.Lbl_cuenta.Text = "Cuenta:";
            // 
            // Lbl_nombre
            // 
            this.Lbl_nombre.AutoSize = true;
            this.Lbl_nombre.Location = new System.Drawing.Point(155, 171);
            this.Lbl_nombre.Name = "Lbl_nombre";
            this.Lbl_nombre.Size = new System.Drawing.Size(82, 21);
            this.Lbl_nombre.TabIndex = 2;
            this.Lbl_nombre.Text = "Nombre:";
            // 
            // Lbl_debe
            // 
            this.Lbl_debe.AutoSize = true;
            this.Lbl_debe.Location = new System.Drawing.Point(156, 253);
            this.Lbl_debe.Name = "Lbl_debe";
            this.Lbl_debe.Size = new System.Drawing.Size(62, 21);
            this.Lbl_debe.TabIndex = 3;
            this.Lbl_debe.Text = "Debe:";
            // 
            // Lbl_haber
            // 
            this.Lbl_haber.AutoSize = true;
            this.Lbl_haber.Location = new System.Drawing.Point(397, 253);
            this.Lbl_haber.Name = "Lbl_haber";
            this.Lbl_haber.Size = new System.Drawing.Size(67, 21);
            this.Lbl_haber.TabIndex = 4;
            this.Lbl_haber.Text = "Haber:";
            // 
            // Txt_idCuenta
            // 
            this.Txt_idCuenta.Location = new System.Drawing.Point(264, 116);
            this.Txt_idCuenta.Name = "Txt_idCuenta";
            this.Txt_idCuenta.Size = new System.Drawing.Size(272, 28);
            this.Txt_idCuenta.TabIndex = 5;
            // 
            // Txt_nombreCuenta
            // 
            this.Txt_nombreCuenta.Location = new System.Drawing.Point(264, 164);
            this.Txt_nombreCuenta.Name = "Txt_nombreCuenta";
            this.Txt_nombreCuenta.Size = new System.Drawing.Size(324, 28);
            this.Txt_nombreCuenta.TabIndex = 6;
            // 
            // Btn_buscar
            // 
            this.Btn_buscar.FlatAppearance.BorderSize = 0;
            this.Btn_buscar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_buscar.Image = global::Recursos_Humanos.Properties.Resources.icons8_búsqueda_35;
            this.Btn_buscar.Location = new System.Drawing.Point(552, 113);
            this.Btn_buscar.Name = "Btn_buscar";
            this.Btn_buscar.Size = new System.Drawing.Size(40, 40);
            this.Btn_buscar.TabIndex = 12;
            this.Btn_buscar.UseVisualStyleBackColor = true;
            this.Btn_buscar.Click += new System.EventHandler(this.Btn_buscar_Click);
            // 
            // Txt_debe
            // 
            this.Txt_debe.Location = new System.Drawing.Point(240, 246);
            this.Txt_debe.Name = "Txt_debe";
            this.Txt_debe.Size = new System.Drawing.Size(129, 28);
            this.Txt_debe.TabIndex = 13;
            // 
            // Txt_haber
            // 
            this.Txt_haber.Location = new System.Drawing.Point(493, 246);
            this.Txt_haber.Name = "Txt_haber";
            this.Txt_haber.Size = new System.Drawing.Size(129, 28);
            this.Txt_haber.TabIndex = 14;
            // 
            // Btn_aceptar
            // 
            this.Btn_aceptar.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.Btn_aceptar.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_aceptar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_aceptar.Location = new System.Drawing.Point(436, 318);
            this.Btn_aceptar.Name = "Btn_aceptar";
            this.Btn_aceptar.Size = new System.Drawing.Size(129, 34);
            this.Btn_aceptar.TabIndex = 15;
            this.Btn_aceptar.Text = "Aceptar";
            this.Btn_aceptar.UseVisualStyleBackColor = true;
            this.Btn_aceptar.Click += new System.EventHandler(this.Btn_aceptar_Click);
            // 
            // Btn_cancelar
            // 
            this.Btn_cancelar.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.Btn_cancelar.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_cancelar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_cancelar.Location = new System.Drawing.Point(229, 318);
            this.Btn_cancelar.Name = "Btn_cancelar";
            this.Btn_cancelar.Size = new System.Drawing.Size(129, 34);
            this.Btn_cancelar.TabIndex = 16;
            this.Btn_cancelar.Text = "Cancelar";
            this.Btn_cancelar.UseVisualStyleBackColor = true;
            this.Btn_cancelar.Click += new System.EventHandler(this.Btn_cancelar_Click);
            // 
            // Frm_consultaCuenta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 400);
            this.Controls.Add(this.Btn_cancelar);
            this.Controls.Add(this.Btn_aceptar);
            this.Controls.Add(this.Txt_haber);
            this.Controls.Add(this.Txt_debe);
            this.Controls.Add(this.Btn_buscar);
            this.Controls.Add(this.Txt_nombreCuenta);
            this.Controls.Add(this.Txt_idCuenta);
            this.Controls.Add(this.Lbl_haber);
            this.Controls.Add(this.Lbl_debe);
            this.Controls.Add(this.Lbl_nombre);
            this.Controls.Add(this.Lbl_cuenta);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Frm_consultaCuenta";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_consultaCuenta";
            this.Load += new System.EventHandler(this.Frm_consultaCuenta_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Label Lbl_cuenta;
        private System.Windows.Forms.Label Lbl_nombre;
        private System.Windows.Forms.Label Lbl_debe;
        private System.Windows.Forms.Label Lbl_haber;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.Button Btn_buscar;
        private System.Windows.Forms.Button Btn_aceptar;
        private System.Windows.Forms.Button Btn_cancelar;
        public System.Windows.Forms.TextBox Txt_idCuenta;
        public System.Windows.Forms.TextBox Txt_nombreCuenta;
        public System.Windows.Forms.TextBox Txt_debe;
        public System.Windows.Forms.TextBox Txt_haber;
    }
}