namespace Recursos_Humanos.Consultas
{
    partial class Frm_consultaCuentas
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
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.Grpbx_titulo = new System.Windows.Forms.GroupBox();
            this.Btn_buscar = new System.Windows.Forms.Button();
            this.Btn_cancelar = new System.Windows.Forms.Button();
            this.Btn_aceptar = new System.Windows.Forms.Button();
            this.Txt_haber = new System.Windows.Forms.TextBox();
            this.Txt_debe = new System.Windows.Forms.TextBox();
            this.Lbl_haber = new System.Windows.Forms.Label();
            this.Lbl_debe = new System.Windows.Forms.Label();
            this.Txt_nombreCuenta = new System.Windows.Forms.TextBox();
            this.Lbl_nombre = new System.Windows.Forms.Label();
            this.Txt_idCuenta = new System.Windows.Forms.TextBox();
            this.Lbl_idCuenta = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.Grpbx_titulo.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.panel1.Controls.Add(this.Btn_minimizar);
            this.panel1.Controls.Add(this.Lbl_titulo);
            this.panel1.Controls.Add(this.Btn_salir);
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
            this.Btn_minimizar.Location = new System.Drawing.Point(659, 11);
            this.Btn_minimizar.Name = "Btn_minimizar";
            this.Btn_minimizar.Size = new System.Drawing.Size(40, 40);
            this.Btn_minimizar.TabIndex = 4;
            this.Btn_minimizar.UseVisualStyleBackColor = true;
            this.Btn_minimizar.Click += new System.EventHandler(this.Btn_minimizar_Click);
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(13, 20);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(236, 23);
            this.Lbl_titulo.TabIndex = 2;
            this.Lbl_titulo.Text = "CONSULTA DE CUENTAS";
            // 
            // Btn_salir
            // 
            this.Btn_salir.FlatAppearance.BorderSize = 0;
            this.Btn_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_salir.Image = global::Recursos_Humanos.Properties.Resources.icons8_cerrar_ventana_35;
            this.Btn_salir.Location = new System.Drawing.Point(737, 10);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(40, 40);
            this.Btn_salir.TabIndex = 3;
            this.Btn_salir.UseVisualStyleBackColor = true;
            this.Btn_salir.Click += new System.EventHandler(this.Btn_salir_Click);
            // 
            // Grpbx_titulo
            // 
            this.Grpbx_titulo.Controls.Add(this.Btn_buscar);
            this.Grpbx_titulo.Controls.Add(this.Btn_cancelar);
            this.Grpbx_titulo.Controls.Add(this.Btn_aceptar);
            this.Grpbx_titulo.Controls.Add(this.Txt_haber);
            this.Grpbx_titulo.Controls.Add(this.Txt_debe);
            this.Grpbx_titulo.Controls.Add(this.Lbl_haber);
            this.Grpbx_titulo.Controls.Add(this.Lbl_debe);
            this.Grpbx_titulo.Controls.Add(this.Txt_nombreCuenta);
            this.Grpbx_titulo.Controls.Add(this.Lbl_nombre);
            this.Grpbx_titulo.Controls.Add(this.Txt_idCuenta);
            this.Grpbx_titulo.Controls.Add(this.Lbl_idCuenta);
            this.Grpbx_titulo.Location = new System.Drawing.Point(17, 81);
            this.Grpbx_titulo.Name = "Grpbx_titulo";
            this.Grpbx_titulo.Size = new System.Drawing.Size(760, 280);
            this.Grpbx_titulo.TabIndex = 1;
            this.Grpbx_titulo.TabStop = false;
            this.Grpbx_titulo.Text = "Cuenta";
            // 
            // Btn_buscar
            // 
            this.Btn_buscar.FlatAppearance.BorderSize = 0;
            this.Btn_buscar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_buscar.Image = global::Recursos_Humanos.Properties.Resources.icons8_búsqueda_35;
            this.Btn_buscar.Location = new System.Drawing.Point(420, 34);
            this.Btn_buscar.Name = "Btn_buscar";
            this.Btn_buscar.Size = new System.Drawing.Size(40, 40);
            this.Btn_buscar.TabIndex = 10;
            this.Btn_buscar.UseVisualStyleBackColor = true;
            this.Btn_buscar.Click += new System.EventHandler(this.Btn_buscar_Click);
            // 
            // Btn_cancelar
            // 
            this.Btn_cancelar.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_cancelar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_cancelar.Location = new System.Drawing.Point(423, 219);
            this.Btn_cancelar.Name = "Btn_cancelar";
            this.Btn_cancelar.Size = new System.Drawing.Size(134, 36);
            this.Btn_cancelar.TabIndex = 9;
            this.Btn_cancelar.Text = "Cancelar";
            this.Btn_cancelar.UseVisualStyleBackColor = true;
            // 
            // Btn_aceptar
            // 
            this.Btn_aceptar.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_aceptar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_aceptar.Location = new System.Drawing.Point(219, 219);
            this.Btn_aceptar.Name = "Btn_aceptar";
            this.Btn_aceptar.Size = new System.Drawing.Size(134, 36);
            this.Btn_aceptar.TabIndex = 8;
            this.Btn_aceptar.Text = "Aceptar";
            this.Btn_aceptar.UseVisualStyleBackColor = true;
            // 
            // Txt_haber
            // 
            this.Txt_haber.Location = new System.Drawing.Point(504, 170);
            this.Txt_haber.Name = "Txt_haber";
            this.Txt_haber.Size = new System.Drawing.Size(111, 28);
            this.Txt_haber.TabIndex = 7;
            // 
            // Txt_debe
            // 
            this.Txt_debe.Location = new System.Drawing.Point(242, 170);
            this.Txt_debe.Name = "Txt_debe";
            this.Txt_debe.Size = new System.Drawing.Size(111, 28);
            this.Txt_debe.TabIndex = 6;
            // 
            // Lbl_haber
            // 
            this.Lbl_haber.AutoSize = true;
            this.Lbl_haber.Location = new System.Drawing.Point(398, 177);
            this.Lbl_haber.Name = "Lbl_haber";
            this.Lbl_haber.Size = new System.Drawing.Size(67, 21);
            this.Lbl_haber.TabIndex = 5;
            this.Lbl_haber.Text = "Haber:";
            // 
            // Lbl_debe
            // 
            this.Lbl_debe.AutoSize = true;
            this.Lbl_debe.Location = new System.Drawing.Point(154, 177);
            this.Lbl_debe.Name = "Lbl_debe";
            this.Lbl_debe.Size = new System.Drawing.Size(62, 21);
            this.Lbl_debe.TabIndex = 4;
            this.Lbl_debe.Text = "Debe:";
            // 
            // Txt_nombreCuenta
            // 
            this.Txt_nombreCuenta.Location = new System.Drawing.Point(251, 93);
            this.Txt_nombreCuenta.Name = "Txt_nombreCuenta";
            this.Txt_nombreCuenta.Size = new System.Drawing.Size(234, 28);
            this.Txt_nombreCuenta.TabIndex = 3;
            // 
            // Lbl_nombre
            // 
            this.Lbl_nombre.AutoSize = true;
            this.Lbl_nombre.Location = new System.Drawing.Point(154, 100);
            this.Lbl_nombre.Name = "Lbl_nombre";
            this.Lbl_nombre.Size = new System.Drawing.Size(82, 21);
            this.Lbl_nombre.TabIndex = 2;
            this.Lbl_nombre.Text = "Nombre:";
            // 
            // Txt_idCuenta
            // 
            this.Txt_idCuenta.Location = new System.Drawing.Point(251, 44);
            this.Txt_idCuenta.Name = "Txt_idCuenta";
            this.Txt_idCuenta.Size = new System.Drawing.Size(152, 28);
            this.Txt_idCuenta.TabIndex = 1;
            // 
            // Lbl_idCuenta
            // 
            this.Lbl_idCuenta.AutoSize = true;
            this.Lbl_idCuenta.Location = new System.Drawing.Point(154, 51);
            this.Lbl_idCuenta.Name = "Lbl_idCuenta";
            this.Lbl_idCuenta.Size = new System.Drawing.Size(79, 21);
            this.Lbl_idCuenta.TabIndex = 0;
            this.Lbl_idCuenta.Text = "Cuenta:";
            // 
            // Frm_consultaCuentas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 400);
            this.Controls.Add(this.Grpbx_titulo);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Frm_consultaCuentas";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_consultaCuentas";
            this.Load += new System.EventHandler(this.Frm_consultaCuentas_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.Grpbx_titulo.ResumeLayout(false);
            this.Grpbx_titulo.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.GroupBox Grpbx_titulo;
        private System.Windows.Forms.Label Lbl_nombre;
        private System.Windows.Forms.Label Lbl_idCuenta;
        private System.Windows.Forms.Label Lbl_haber;
        private System.Windows.Forms.Label Lbl_debe;
        public System.Windows.Forms.TextBox Txt_nombreCuenta;
        public System.Windows.Forms.TextBox Txt_idCuenta;
        public System.Windows.Forms.TextBox Txt_haber;
        public System.Windows.Forms.TextBox Txt_debe;
        private System.Windows.Forms.Button Btn_cancelar;
        private System.Windows.Forms.Button Btn_aceptar;
        private System.Windows.Forms.Button Btn_buscar;
    }
}