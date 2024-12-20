using DatabaseLibrary.Models;
using DatabaseLibrary.Services;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace FragrantWorld.Pages
{
    /// <summary>
    /// Логика взаимодействия для ShopPage.xaml
    /// </summary>
    public partial class ShopPage : Page
    {
        private readonly ProductService _productService = new();
        private readonly UserService _userService = new();
        private List<Product> AllProducts = new();
        private List<Product> FilteredProducts = new();


        public ShopPage()
        {
            InitializeComponent();
        }

        private async void Page_Loaded(object sender, RoutedEventArgs e)
        {
            await LoadProductsAsync();
        }

        private async Task LoadProductsAsync()
        {
            try
            {
                AllProducts = await _productService.GetProductsAsync();
                if (AllProducts == null) throw new Exception("Failed to load products.");
                FilteredProducts = new List<Product>(AllProducts);
                UpdateDisplayedProducts();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        private void UpdateDisplayedProducts()
        {
            ProductStackPanel.Children.Clear();

            foreach (var product in FilteredProducts)
            {
                CreatProductConteiner(product);
            }

            CountTextBlock.Text = $"{FilteredProducts.Count} из {AllProducts.Count}";
        }


        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (App.CurrentFrame.CanGoBack)
                App.CurrentFrame.GoBack();
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            ApplyFilters();
        }

        private void ManufacturerComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ApplyFilters();
        }

        private void SortComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                var selectedItem = (ComboBoxItem)SortComboBox.SelectedItem;
                if (selectedItem != null)
                {
                    string sortOption = selectedItem.Content.ToString();

                    ApplyFilters();

                    if (sortOption == "Цена (по возрастанию)")
                    {
                        FilteredProducts = FilteredProducts.OrderBy(p => p.Cost).ToList();
                    }
                    else if (sortOption == "Цена (по убыванию)")
                    {
                        FilteredProducts = FilteredProducts.OrderByDescending(p => p.Cost).ToList();
                    }

                    UpdateDisplayedProducts();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }



        private void PriceTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            ApplyFilters();
        }


        private void ApplyFilters()
        {
            try
            {
                if (AllProducts == null) throw new Exception("Products not loaded.");

                FilteredProducts = AllProducts.Where(product =>
                    (ManufacturerComboBox.SelectedIndex == 0 || product.Manufacturer == (string)((ComboBoxItem)ManufacturerComboBox.SelectedItem)?.Content) &&
                    (string.IsNullOrWhiteSpace(SearchTextBox.Text) || product.Name.Contains(SearchTextBox.Text, StringComparison.OrdinalIgnoreCase)) &&
                    (decimal.TryParse(MinPriceTextBox.Text, out decimal minPrice) ? product.Cost >= minPrice : true) &&
                    (decimal.TryParse(MaxPriceTextBox.Text, out decimal maxPrice) ? product.Cost <= maxPrice : true)
                ).ToList();

                if (SortComboBox.SelectedIndex == 0) // Цена по возрастанию
                {
                    FilteredProducts = FilteredProducts.OrderBy(p => p.Cost).ToList();
                }
                else if (SortComboBox.SelectedIndex == 1) // Цена по убыванию
                {
                    FilteredProducts = FilteredProducts.OrderByDescending(p => p.Cost).ToList();
                }

                UpdateDisplayedProducts();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }





        private void CreatProductConteiner(Product productItem)
        {
            try
            {
                StackPanel panel = new()
                {
                    Width = 630,
                    Margin = new Thickness(15),
                    Background = new SolidColorBrush(Color.FromRgb(255, 204, 153)),

                };



                Grid grid = new() { };
                grid.RowDefinitions.Add(new RowDefinition());
                grid.RowDefinitions.Add(new RowDefinition());
                grid.RowDefinitions.Add(new RowDefinition());
                grid.RowDefinitions.Add(new RowDefinition());
                grid.ColumnDefinitions.Add(new ColumnDefinition());
                grid.ColumnDefinitions.Add(new ColumnDefinition());

                TextBlock ProductTextBlock = new TextBlock()
                {
                    Text = productItem.Name,
                    FontWeight = FontWeights.Bold
                };
                Grid.SetRow(ProductTextBlock, 0);
                Grid.SetColumn(ProductTextBlock, 0);
                grid.Children.Add(ProductTextBlock);

                TextBlock DescriptionTextBlock = new TextBlock
                {
                    Text = productItem.Description,
                    FontFamily = new FontFamily("Comic Sans MS"),
                    TextWrapping = TextWrapping.Wrap,
                    TextAlignment = TextAlignment.Left
                };
                Grid.SetRow(DescriptionTextBlock, 1);
                Grid.SetColumn(DescriptionTextBlock, 0);
                grid.Children.Add(DescriptionTextBlock);

                TextBlock ManufacturerTextBlock = new TextBlock
                {
                    Text = $"Производитель: {productItem.Manufacturer}",
                    FontFamily = new FontFamily("Comic Sans MS"),
                };
                Grid.SetRow(ManufacturerTextBlock, 2);
                Grid.SetColumn(ManufacturerTextBlock, 0);
                grid.Children.Add(ManufacturerTextBlock);

                TextBlock PriceTextBlock = new TextBlock
                {
                    Text = $"Цена: {productItem.Cost}",
                    FontFamily = new FontFamily("Comic Sans MS"),
                };
                Grid.SetRow(PriceTextBlock, 3);
                Grid.SetColumn(PriceTextBlock, 0);
                grid.Children.Add(PriceTextBlock);

                Button OrderButton = new Button
                {
                    Content = "Заказать",
                    HorizontalAlignment = HorizontalAlignment.Right,
                    FontFamily = new FontFamily("Comic Sans MS"),
                    Background = new SolidColorBrush(Color.FromRgb(204, 102, 0))
                };
                Grid.SetRow(OrderButton, 3);
                Grid.SetColumn(OrderButton, 1);
                grid.Children.Add(OrderButton);


                panel.Children.Add(grid);

                ProductStackPanel.Children.Add(panel);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
