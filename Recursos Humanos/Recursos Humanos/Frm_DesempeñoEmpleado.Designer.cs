namespace Recursos_Humanos
{
    partial class Frm_DesempeñoEmpleado
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea5 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend5 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            this.panel1 = new System.Windows.Forms.Panel();
            this.Btn_minimizar = new System.Windows.Forms.Button();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.lbl_codigo = new System.Windows.Forms.Label();
            this.txt_cod = new System.Windows.Forms.TextBox();
            this.btn_buscar = new System.Windows.Forms.Button();
            this.cht_desempeño = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.btn_guardar = new System.Windows.Forms.Button();
            this.dgv_Empleado = new System.Windows.Forms.DataGridView();
            this.Nom = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Ape = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Corre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cht_desempeño)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_Empleado)).BeginInit();
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
            this.panel1.Margin = new System.Windows.Forms.Padding(5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1251, 64);
            this.panel1.TabIndex = 8;
            // 
            // Btn_minimizar
            // 
            this.Btn_minimizar.FlatAppearance.BorderSize = 0;
            this.Btn_minimizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_minimizar.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.Btn_minimizar.Location = new System.Drawing.Point(1001, 11);
            this.Btn_minimizar.Margin = new System.Windows.Forms.Padding(4);
            this.Btn_minimizar.Name = "Btn_minimizar";
            this.Btn_minimizar.Size = new System.Drawing.Size(53, 49);
            this.Btn_minimizar.TabIndex = 1;
            this.Btn_minimizar.UseVisualStyleBackColor = true;
            this.Btn_minimizar.Click += new System.EventHandler(this.Btn_minimizar_Click);
            // 
            // Btn_salir
            // 
            this.Btn_salir.FlatAppearance.BorderSize = 0;
            this.Btn_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_salir.Image = global::Recursos_Humanos.Properties.Resources.icons8_cerrar_ventana_35;
            this.Btn_salir.Location = new System.Drawing.Point(1120, 11);
            this.Btn_salir.Margin = new System.Windows.Forms.Padding(4);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(53, 49);
            this.Btn_salir.TabIndex = 2;
            this.Btn_salir.UseVisualStyleBackColor = true;
            this.Btn_salir.Click += new System.EventHandler(this.Btn_salir_Click);
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Century Gothic", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(17, 25);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(317, 28);
            this.Lbl_titulo.TabIndex = 1;
            this.Lbl_titulo.Text = "Desempeño de Empleado";
            // 
            // lbl_codigo
            // 
            this.lbl_codigo.AutoSize = true;
            this.lbl_codigo.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_codigo.Location = new System.Drawing.Point(321, 82);
            this.lbl_codigo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbl_codigo.Name = "lbl_codigo";
            this.lbl_codigo.Size = new System.Drawing.Size(162, 21);
            this.lbl_codigo.TabIndex = 15;
            this.lbl_codigo.Text = "Codigo Empleado";
            // 
            // txt_cod
            // 
            this.txt_cod.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_cod.Location = new System.Drawing.Point(540, 79);
            this.txt_cod.Margin = new System.Windows.Forms.Padding(4);
            this.txt_cod.Name = "txt_cod";
            this.txt_cod.Size = new System.Drawing.Size(225, 27);
            this.txt_cod.TabIndex = 14;
            this.txt_cod.KeyUp += new System.Windows.Forms.KeyEventHandler(this.Txt_cod_KeyUp);
            // 
            // btn_buscar
            // 
            this.btn_buscar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_buscar.Location = new System.Drawing.Point(795, 80);
            this.btn_buscar.Margin = new System.Windows.Forms.Padding(4);
            this.btn_buscar.Name = "btn_buscar";
            this.btn_buscar.Size = new System.Drawing.Size(100, 28);
            this.btn_buscar.TabIndex = 13;
            this.btn_buscar.Text = "Buscar";
            this.btn_buscar.UseVisualStyleBackColor = true;
            this.btn_buscar.Click += new System.EventHandler(this.Btn_buscar_Click);
            // 
            // cht_desempeño
            // 
            chartArea5.Name = "ChartArea1";
            this.cht_desempeño.ChartAreas.Add(chartArea5);
            legend5.Name = "Legend1";
            this.cht_desempeño.Legends.Add(legend5);
            this.cht_desempeño.Location = new System.Drawing.Point(234, 121);
            this.cht_desempeño.Margin = new System.Windows.Forms.Padding(4);
            this.cht_desempeño.Name = "cht_desempeño";
            this.cht_desempeño.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Excel;
            this.cht_desempeño.Size = new System.Drawing.Size(783, 494);
            this.cht_desempeño.TabIndex = 16;
            this.cht_desempeño.Text = "chart1";
            // 
            // btn_guardar
            // 
            this.btn_guardar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_guardar.Location = new System.Drawing.Point(823, 624);
            this.btn_guardar.Margin = new System.Windows.Forms.Padding(4);
            this.btn_guardar.Name = "btn_guardar";
            this.btn_guardar.Size = new System.Drawing.Size(193, 55);
            this.btn_guardar.TabIndex = 18;
            this.btn_guardar.Text = "Guardar Resultados";
            this.btn_guardar.UseVisualStyleBackColor = true;
            this.btn_guardar.Click += new System.EventHandler(this.Btn_guardar_Click);
            // 
            // dgv_Empleado
            // 
            this.dgv_Empleado.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgv_Empleado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_Empleado.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Nom,
            this.Ape,
            this.Column1,
            this.Corre});
            this.dgv_Empleado.Location = new System.Drawing.Point(234, 623);
            this.dgv_Empleado.Margin = new System.Windows.Forms.Padding(4);
            this.dgv_Empleado.Name = "dgv_Empleado";
            this.dgv_Empleado.RowHeadersVisible = false;
            this.dgv_Empleado.RowHeadersWidth = 51;
            this.dgv_Empleado.Size = new System.Drawing.Size(581, 57);
            this.dgv_Empleado.TabIndex = 17;
            // 
            // Nom
            // 
            this.Nom.HeaderText = "Nombre";
            this.Nom.MinimumWidth = 6;
            this.Nom.Name = "Nom";
            // 
            // Ape
            // 
            this.Ape.HeaderText = "Apellido";
            this.Ape.MinimumWidth = 6;
            this.Ape.Name = "Ape";
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Telefono";
            this.Column1.MinimumWidth = 6;
            this.Column1.Name = "Column1";
            // 
            // Corre
            // 
            this.Corre.HeaderText = "Correo";
            this.Corre.MinimumWidth = 6;
            this.Corre.Name = "Corre";
            // 
            // Frm_DesempeñoEmpleado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1251, 689);
            this.Controls.Add(this.btn_guardar);
            this.Controls.Add(this.dgv_Empleado);
            this.Controls.Add(this.cht_desempeño);
            this.Controls.Add(this.lbl_codigo);
            this.Controls.Add(this.txt_cod);
            this.Controls.Add(this.btn_buscar);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Frm_DesempeñoEmpleado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_DesempeñoEmpleado";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cht_desempeño)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_Empleado)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Label lbl_codigo;
        private System.Windows.Forms.TextBox txt_cod;
        private System.Windows.Forms.Button btn_buscar;
        private System.Windows.Forms.DataVisualization.Charting.Chart cht_desempeño;
        private System.Windows.Forms.Button btn_guardar;
        private System.Windows.Forms.DataGridView dgv_Empleado;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nom;
        private System.Windows.Forms.DataGridViewTextBoxColumn Ape;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Corre;
    }
}