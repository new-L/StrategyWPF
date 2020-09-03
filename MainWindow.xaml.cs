using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace StrategyWPF
{
    public partial class MainWindow : Window
    {
        Printer printer;
        public MainWindow()
        {
            InitializeComponent();

            printer = new Printer(new NumericValidate());
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(NumericRB.IsChecked == true)
            {
                printer.SetCase(new NumericValidate());
            }
            else if(LowerRB.IsChecked == true)
            {
                printer.SetCase(new LowerValidate());
            }
            else if(UpperRB.IsChecked == true)
            {
                printer.SetCase(new UpperValidate());
            }
            Desc.Visibility = Visibility.Visible;
            Desc.Content = printer.Print(TextBox.Text);
            TextBox.Text = "";
        }
    }

    class Printer
    {
        //Ссылка на интерфейс
        public IPrintable Printable { private get; set; }

        #region Установка стратегий
        /*Constructor*/ //Первичная установка стратегии
        public Printer(IPrintable type)
        {
            Printable = type;
        }
        /*Set Validate Case*/ //Изменение стратегии во время выполнения программы
        public void SetCase(IPrintable type)
        {
            Printable = type;
        }
        #endregion

        //Вызов принта
        public string Print(string _input)
        {
            if (!IsStringEmpty(_input))
                return Printable.Print(_input);
            else
                return "Строка пуста...";
        }
        //Проверка вводимых данных на пустоту
        public bool IsStringEmpty(string str)
        {
            return String.IsNullOrEmpty(str) ? true : false;
        }
    }


    #region Стратегии
    public class LowerValidate : IPrintable
    {
        public string Print(string str)
        {
            foreach (char item in str)
            {
                if (!Char.IsLower(item) && !Char.IsWhiteSpace(item))
                {
                    return "В строке есть символ в ВЕРХНЕМ регистре или число!";
                }
            }
            return "Всё верно!";
        }
    }
    public class UpperValidate : IPrintable
    {
        public string Print(string str)
        {
            foreach (char item in str)
            {
                if (!Char.IsUpper(item) && !Char.IsWhiteSpace(item))
                {
                    return "В строке есть символ в НИЖНЕМ регистре или число!";
                }
            }
            return "Всё верно!";
        }
    }
    public class NumericValidate : IPrintable
    {
        public string Print(string str)
        {
            foreach (char item in str)
            {
                if (!Char.IsDigit(item) && !Char.IsWhiteSpace(item))
                {
                    return "В строке есть символ - НЕ ЧИСЛО!";
                }
            }
            return "Всё верно!";
        }
    }
    #endregion
}
