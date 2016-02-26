<?php
class ControllerModuleCustomproduct extends Controller {
    protected function index($setting) {
        if (isset($this->request->get['path'])) {
            $parts = explode('_', (string)$this->request->get['path']);
            $category_id = (int)array_pop($parts);
        }else{
            $category_id = 0;
        }
        
        if($setting['category']==0 || $setting['category']==$category_id){
        
        $this->language->load('module/customproduct'); 

        $this->data['heading_title'] = $setting[(int)$this->config->get('config_language_id')]['name'];
        
        $this->data['button_cart'] = $this->language->get('button_cart');
        
        $this->load->model('catalog/product'); 
        
        $this->load->model('tool/image');

        $this->data['products'] = array();

        $products = explode(',', $setting['products']);        

        foreach ($products as $product_id) {
            $product_info = $this->model_catalog_product->getProduct($product_id);
            
            if ($product_info) {
                if ($product_info['image']) {
                    $image = $this->model_tool_image->resize($product_info['image'], $setting['image_width'], $setting['image_height']);
                } else {
                    $image = false;
                }

                if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price = false;
                }
                        
                if ((float)$product_info['special']) {
                    $special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $special = false;
                }
                
                if ($this->config->get('config_review_status')) {
                    $rating = $product_info['rating'];
                } else {
                    $rating = false;
                }
                    
                $this->data['products'][] = array(
                    'product_id' => $product_info['product_id'],
                    'thumb'        => $image,
                    'name'         => $product_info['name'],
                    'price'        => $price,
                    'special'      => $special,
                    'rating'     => $rating,
                    'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']),
                    'href'         => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
                );
            }
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/customproduct.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/module/customproduct.tpl';
        } else {
            $this->template = 'default/template/module/customproduct.tpl';
        }

        $this->render();
    }
    }
}
?>