namespace Recursos_Humanos
{
    partial class Frm_ConceptoEmpleado
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
            this.label2 = new System.Windows.Forms.Label();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.Txt_Idconcepto = new System.Windows.Forms.TextBox();
            this.Txt_Valor = new System.Windows.Forms.TextBox();
            this.Txt_Naturaleza = new System.Windows.Forms.TextBox();
            this.Txt_idempleado = new System.Windows.Forms.TextBox();
            this.Txt_Sueldo = new System.Windows.Forms.TextBox();
            this.Txt_Total = new System.Windows.Forms.TextBox();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.Btn_minimizar = new System.Windows.Forms.Button();
            this.Btn_salir = new System.Windows.Forms.Button();
            this.Lbl_titulo = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(688, 80);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(102, 18);
            this.label2.TabIndex = 1;
            this.label2.Text = "Seleccionar:";
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(818, 81);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(70, 21);
            this.checkBox1.TabIndex = 2;
            this.checkBox1.Text = "Todos";
            this.checkBox1.UseVisualStyleBackColor = true;
            this.checkBox1.CheckedChanged += new System.EventHandler(this.CheckBox1_CheckedChanged);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5});
            this.dataGridView1.Location = new System.Drawing.Point(30, 120);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(871, 187);
            this.dataGridView1.TabIndex = 3;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Codigo de empleado";
            this.Column1.MinimumWidth = 6;
            this.Column1.Name = "Column1";
            this.Column1.Width = 125;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Sueldo Base";
            this.Column2.MinimumWidth = 6;
            this.Column2.Name = "Column2";
            this.Column2.Width = 125;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Puesto";
            this.Column3.MinimumWidth = 6;
            this.Column3.Name = "Column3";
            this.Column3.Width = 125;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Departamento";
            this.Column4.MinimumWidth = 6;
            this.Column4.Name = "Column4";
            this.Column4.Width = 125;
            // 
            // Column5
            // 
            this.Column5.HeaderText = "Seleccionar";
            this.Column5.MinimumWidth = 6;
            this.Column5.Name = "Column5";
            this.Column5.Width = 125;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 325);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 17);
            this.label3.TabIndex = 4;
            this.label3.Text = "Concepto";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(8, 356);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(41, 17);
            this.label4.TabIndex = 5;
            this.label4.Text = "Valor";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(8, 383);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 17);
            this.label5.TabIndex = 6;
            this.label5.Text = "Naturaleza";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(197, 356);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(52, 17);
            this.label6.TabIndex = 7;
            this.label6.Text = "Sueldo";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(197, 325);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(71, 17);
            this.label7.TabIndex = 8;
            this.label7.Text = "Empleado";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(197, 383);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(40, 17);
            this.label8.TabIndex = 9;
            this.label8.Text = "Total";
            // 
            // button1
            // 
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(577, 356);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(324, 55);
            this.button1.TabIndex = 10;
            this.button1.Text = "Confirmar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.Button1_Click);
            // 
            // Txt_Idconcepto
            // 
            this.Txt_Idconcepto.Location = new System.Drawing.Point(93, 322);
            this.Txt_Idconcepto.Name = "Txt_Idconcepto";
            this.Txt_Idconcepto.Size = new System.Drawing.Size(100, 22);
            this.Txt_Idconcepto.TabIndex = 11;
            // 
            // Txt_Valor
            // 
            this.Txt_Valor.Location = new System.Drawing.Point(93, 356);
            this.Txt_Valor.Name = "Txt_Valor";
            this.Txt_Valor.Size = new System.Drawing.Size(100, 22);
            this.Txt_Valor.TabIndex = 12;
            // 
            // Txt_Naturaleza
            // 
            this.Txt_Naturaleza.Location = new System.Drawing.Point(91, 384);
            this.Txt_Naturaleza.Name = "Txt_Naturaleza";
            this.Txt_Naturaleza.Size = new System.Drawing.Size(100, 22);
            this.Txt_Naturaleza.TabIndex = 13;
            // 
            // Txt_idempleado
            // 
            this.Txt_idempleado.Location = new System.Drawing.Point(287, 325);
            this.Txt_idempleado.Name = "Txt_idempleado";
            this.Txt_idempleado.Size = new System.Drawing.Size(100, 22);
            this.Txt_idempleado.TabIndex = 14;
            // 
            // Txt_Sueldo
            // 
            this.Txt_Sueldo.Location = new System.Drawing.Point(287, 356);
            this.Txt_Sueldo.Name = "Txt_Sueldo";
            this.Txt_Sueldo.Size = new System.Drawing.Size(100, 22);
            this.Txt_Sueldo.TabIndex = 15;
            // 
            // Txt_Total
            // 
            this.Txt_Total.Location = new System.Drawing.Point(287, 384);
            this.Txt_Total.Name = "Txt_Total";
            this.Txt_Total.Size = new System.Drawing.Size(100, 22);
            this.Txt_Total.TabIndex = 16;
            // 
            // textBox5
            // 
            this.textBox5.Location = new System.Drawing.Point(463, 325);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(100, 22);
            this.textBox5.TabIndex = 17;
            this.textBox5.Text = "30";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(417, 328);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(36, 17);
            this.label9.TabIndex = 18;
            this.label9.Text = "Dias";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(173)))), ((int)(((byte)(215)))));
            this.panel1.Controls.Add(this.button3);
            this.panel1.Controls.Add(this.button2);
            this.panel1.Controls.Add(this.Btn_minimizar);
            this.panel1.Controls.Add(this.Btn_salir);
            this.panel1.Controls.Add(this.Lbl_titulo);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(913, 64);
            this.panel1.TabIndex = 19;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.Panel1_Paint);
            // 
            // Btn_minimizar
            // 
            this.Btn_minimizar.FlatAppearance.BorderSize = 0;
            this.Btn_minimizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_minimizar.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.Btn_minimizar.Location = new System.Drawing.Point(1249, 11);
            this.Btn_minimizar.Margin = new System.Windows.Forms.Padding(4);
            this.Btn_minimizar.Name = "Btn_minimizar";
            this.Btn_minimizar.Size = new System.Drawing.Size(53, 49);
            this.Btn_minimizar.TabIndex = 1;
            this.Btn_minimizar.UseVisualStyleBackColor = true;
            // 
            // Btn_salir
            // 
            this.Btn_salir.FlatAppearance.BorderSize = 0;
            this.Btn_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_salir.Image = global::Recursos_Humanos.Properties.Resources.icons8_cerrar_ventana_35;
            this.Btn_salir.Location = new System.Drawing.Point(1368, 11);
            this.Btn_salir.Margin = new System.Windows.Forms.Padding(4);
            this.Btn_salir.Name = "Btn_salir";
            this.Btn_salir.Size = new System.Drawing.Size(53, 49);
            this.Btn_salir.TabIndex = 2;
            this.Btn_salir.UseVisualStyleBackColor = true;
            // 
            // Lbl_titulo
            // 
            this.Lbl_titulo.AutoSize = true;
            this.Lbl_titulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_titulo.Location = new System.Drawing.Point(17, 25);
            this.Lbl_titulo.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.Lbl_titulo.Name = "Lbl_titulo";
            this.Lbl_titulo.Size = new System.Drawing.Size(409, 29);
            this.Lbl_titulo.TabIndex = 1;
            this.Lbl_titulo.Text = "Asignacion Concepto A Empleado";
            // 
            // button2
            // 
            this.button2.FlatAppearance.BorderSize = 0;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Image = global::Recursos_Humanos.Properties.Resources.icons8_minimizar_la_ventana_35;
            this.button2.Location = new System.Drawing.Point(739, 4);
            this.button2.Margin = new System.Windows.Forms.Padding(4);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(53, 49);
            this.button2.TabIndex = 20;
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.Button2_Click);
            // 
            // button3
            // 
            this.button3.FlatAppearance.BorderSize = 0;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Image = global::Recursos_Humanos.Properties.Resources.icons8_cerrar_ventana_35;
            this.button3.Location = new System.Drawing.Point(858, 4);
            this.button3.Margin = new System.Windows.Forms.Padding(4);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(53, 49);
            this.button3.TabIndex = 20;
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.Button3_Click);
            // 
            // Frm_ConceptoEmpleado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(913, 450);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.textBox5);
            this.Controls.Add(this.Txt_Total);
            this.Controls.Add(this.Txt_Sueldo);
            this.Controls.Add(this.Txt_idempleado);
            this.Controls.Add(this.Txt_Naturaleza);
            this.Controls.Add(this.Txt_Valor);
            this.Controls.Add(this.Txt_Idconcepto);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.label2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Frm_ConceptoEmpleado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frm_ConceptoEmpleado";
            this.Load += new System.EventHandler(this.Frm_ConceptoEmpleado_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Column5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox Txt_Idconcepto;
        private System.Windows.Forms.TextBox Txt_Valor;
        private System.Windows.Forms.TextBox Txt_Naturaleza;
        private System.Windows.Forms.TextBox Txt_idempleado;
        private System.Windows.Forms.TextBox Txt_Sueldo;
        private System.Windows.Forms.TextBox Txt_Total;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button Btn_minimizar;
        private System.Windows.Forms.Button Btn_salir;
        private System.Windows.Forms.Label Lbl_titulo;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
    }
}