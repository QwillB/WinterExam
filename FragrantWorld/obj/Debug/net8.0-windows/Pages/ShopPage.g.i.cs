﻿#pragma checksum "..\..\..\..\Pages\ShopPage.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "2FB39DF03FE0343120EC6ADDA86FECF31AF38EC9"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using FragrantWorld.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace FragrantWorld.Pages {
    
    
    /// <summary>
    /// ShopPage
    /// </summary>
    public partial class ShopPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BackButton;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SearchTextBox;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ManufacturerComboBox;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox MinPriceTextBox;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox MaxPriceTextBox;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox SortComboBox;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock CountTextBlock;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ScrollViewer ProductScrollViewer;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\Pages\ShopPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel ProductStackPanel;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/FragrantWorldApp;V1.0.0.0;component/pages/shoppage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Pages\ShopPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 10 "..\..\..\..\Pages\ShopPage.xaml"
            ((FragrantWorld.Pages.ShopPage)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.BackButton = ((System.Windows.Controls.Button)(target));
            
            #line 19 "..\..\..\..\Pages\ShopPage.xaml"
            this.BackButton.Click += new System.Windows.RoutedEventHandler(this.BackButton_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.SearchTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 21 "..\..\..\..\Pages\ShopPage.xaml"
            this.SearchTextBox.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.SearchTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.ManufacturerComboBox = ((System.Windows.Controls.ComboBox)(target));
            
            #line 24 "..\..\..\..\Pages\ShopPage.xaml"
            this.ManufacturerComboBox.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ManufacturerComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.MinPriceTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 29 "..\..\..\..\Pages\ShopPage.xaml"
            this.MinPriceTextBox.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.PriceTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.MaxPriceTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 31 "..\..\..\..\Pages\ShopPage.xaml"
            this.MaxPriceTextBox.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.PriceTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 7:
            this.SortComboBox = ((System.Windows.Controls.ComboBox)(target));
            
            #line 33 "..\..\..\..\Pages\ShopPage.xaml"
            this.SortComboBox.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.SortComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 8:
            this.CountTextBlock = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 9:
            this.ProductScrollViewer = ((System.Windows.Controls.ScrollViewer)(target));
            return;
            case 10:
            this.ProductStackPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

