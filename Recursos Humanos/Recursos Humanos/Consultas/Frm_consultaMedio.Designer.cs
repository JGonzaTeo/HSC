namespace Recursos_Humanos.Consultas
{
    partial class Frm_consultaMedio
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
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.Btn_minimizar = new System.Windows.Forms.Button();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.Btn_actualizar = new System.Windows.Forms.Button();
            this.Btn_seleccionar = new System.Windows.Forms.Button();
            this.Dgv_consultaMedios = new System.Windows.Forms.DataGridView();
            this.Btn_buscar = new System.Windows.Forms.Button();
            this.Txt_nombreMedio = new System.Windows.Forms.TextBox();
            this.Lbl_nombreCuenta = new System.Windows.Forms.Label();
            this.cod = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nom = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_consultaMedios)).BeginInit();
            this.SuspendLayout();
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Century Gothic", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(13, 20);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(357, 23);
            this.Lbl_titulo.TabIndex = 1;
            this.Lbl_titulo.Text = "Consulta de Medio de Comunicacion";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.panel1.Controls.Add(this.Btn_minimizar);
            this.panel1.Controls.Add(this.Btn_salir);
            this.panel1.Controls.Add(this.Lbl_titulo);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(870, 52);
            this.panel1.TabIndex = 28;
            // 
            // Btn_minimizar
            // 
            this.Btn_minimizar.FlatAppearance.BorderSize = 0;
            this.Btn_minimizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_minimizar.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.Btn_minimizar.Location = new System.Drawing.Point(730, 9);
            this.Btn_minimizar.Name = "Btn_minimizar";
            this.Btn_minimizar.Size = new System.Drawing.Size(40, 40);
            this.Btn_minimizar.TabIndex = 1;
            this.Btn_minimizar.UseVisualStyleBackColor = true;
            this.Btn_minimizar.Click += new System.EventHandler(this.Btn_minimizar_Click);
            // 
            // Btn_salir
            // 
            this.Btn_salir.FlatAppearance.BorderSize = 0;
            this.Btn_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_salir.Image = global::Recursos_Humanos.Properties.Resources.icons8_cerrar_ventana_35;
            this.Btn_salir.Location = new System.Drawing.Point(819, 9);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(40, 40);
            this.Btn_salir.TabIndex = 2;
            this.Btn_salir.UseVisualStyleBackColor = true;
            this.Btn_salir.Click += new System.EventHandler(this.Btn_salir_Click);
            // 
            // Btn_actualizar
            // 
            this.Btn_actualizar.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.Btn_actualizar.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_actualizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_actualizar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_actualizar.Location = new System.Drawing.Point(472, 478);
            this.Btn_actualizar.Name = "Btn_actualizar";
            this.Btn_actualizar.Size = new System.Drawing.Size(129, 34);
            this.Btn_actualizar.TabIndex = 34;
            this.Btn_actualizar.Text = "Actualizar";
            this.Btn_actualizar.UseVisualStyleBackColor = true;
            this.Btn_actualizar.Click += new System.EventHandler(this.Btn_actualizar_Click);
            // 
            // Btn_seleccionar
            // 
            this.Btn_seleccionar.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.Btn_seleccionar.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.Btn_seleccionar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_seleccionar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_seleccionar.Location = new System.Drawing.Point(651, 478);
            this.Btn_seleccionar.Name = "Btn_seleccionar";
            this.Btn_seleccionar.Size = new System.Drawing.Size(129, 34);
            this.Btn_seleccionar.TabIndex = 33;
            this.Btn_seleccionar.Text = "Seleccionar";
            this.Btn_seleccionar.UseVisualStyleBackColor = true;
            this.Btn_seleccionar.Click += new System.EventHandler(this.Btn_seleccionar_Click);
            // 
            // Dgv_consultaMedios
            // 
            this.Dgv_consultaMedios.AllowUserToAddRows = false;
            this.Dgv_consultaMedios.AllowUserToDeleteRows = false;
            this.Dgv_consultaMedios.AllowUserToResizeColumns = false;
            this.Dgv_consultaMedios.AllowUserToResizeRows = false;
            this.Dgv_consultaMedios.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.Dgv_consultaMedios.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_consultaMedios.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cod,
            this.nom,
            this.tipo});
            this.Dgv_consultaMedios.Location = new System.Drawing.Point(106, 87);
            this.Dgv_consultaMedios.Name = "Dgv_consultaMedios";
            this.Dgv_consultaMedios.ReadOnly = true;
            this.Dgv_consultaMedios.RowHeadersVisible = false;
            this.Dgv_consultaMedios.RowHeadersWidth = 51;
            this.Dgv_consultaMedios.RowTemplate.Height = 24;
            this.Dgv_consultaMedios.Size = new System.Drawing.Size(674, 376);
            this.Dgv_consultaMedios.TabIndex = 32;
            // 
            // Btn_buscar
            // 
            this.Btn_buscar.FlatAppearance.BorderSize = 0;
            this.Btn_buscar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_buscar.Location = new System.Drawing.Point(689, 54);
            this.Btn_buscar.Name = "Btn_buscar";
            this.Btn_buscar.Size = new System.Drawing.Size(91, 30);
            this.Btn_buscar.TabIndex = 31;
            this.Btn_buscar.Text = "Buscar";
            this.Btn_buscar.UseVisualStyleBackColor = true;
            this.Btn_buscar.Click += new System.EventHandler(this.Btn_buscar_Click);
            // 
            // Txt_nombreMedio
            // 
            this.Txt_nombreMedio.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Txt_nombreMedio.Location = new System.Drawing.Point(244, 59);
            this.Txt_nombreMedio.Name = "Txt_nombreMedio";
            this.Txt_nombreMedio.Size = new System.Drawing.Size(416, 23);
            this.Txt_nombreMedio.TabIndex = 30;
            // 
            // Lbl_nombreCuenta
            // 
            this.Lbl_nombreCuenta.AutoSize = true;
            this.Lbl_nombreCuenta.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_nombreCuenta.Location = new System.Drawing.Point(103, 59);
            this.Lbl_nombreCuenta.Name = "Lbl_nombreCuenta";
            this.Lbl_nombreCuenta.Size = new System.Drawing.Size(135, 17);
            this.Lbl_nombreCuenta.TabIndex = 29;
            this.Lbl_nombreCuenta.Text = "Nombre del medio:";
            // 
            // cod
            // 
            this.cod.HeaderText = "ID";
            this.cod.Name = "cod";
            this.cod.ReadOnly = true;
            // 
            // nom
            // 
            this.nom.HeaderText = "Nombre del Medio ";
            this.nom.Name = "nom";
            this.nom.ReadOnly = true;
            // 
            // tipo
            // 
            this.tipo.HeaderText = "Tipo del medio";
            this.tipo.Name = "tipo";
            this.tipo.ReadOnly = true;
            // 
            // Frm_consultaMedio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(870, 523);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.Btn_actualizar);
            this.Controls.Add(this.Btn_seleccionar);
            this.Controls.Add(this.Dgv_consultaMedios);
            this.Controls.Add(this.Btn_buscar);
            this.Controls.Add(this.Txt_nombreMedio);
            this.Controls.Add(this.Lbl_nombreCuenta);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Frm_consultaMedio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_consultaMedio";
            this.Load += new System.EventHandler(this.Frm_consultaMedio_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_consultaMedios)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Button Btn_actualizar;
        private System.Windows.Forms.Button Btn_seleccionar;
        public System.Windows.Forms.DataGridView Dgv_consultaMedios;
        private System.Windows.Forms.DataGridViewTextBoxColumn cod;
        private System.Windows.Forms.DataGridViewTextBoxColumn nom;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipo;
        private System.Windows.Forms.Button Btn_buscar;
        private System.Windows.Forms.TextBox Txt_nombreMedio;
        private System.Windows.Forms.Label Lbl_nombreCuenta;
    }
}