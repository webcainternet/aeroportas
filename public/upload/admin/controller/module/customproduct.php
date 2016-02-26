<?php
class ControllerModulecustomproduct extends Controller {
    private $error = array();
    private $version = "1.1";
    private $module = "customproduct"; 
    
    public function index() {   
        $this->load->language('module/customproduct');
        $this->load->model('catalog/category');

        $this->document->setTitle(strip_tags($this->language->get('heading_title')));
        
        $this->load->model('setting/setting');
                
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {            
            $this->model_setting_setting->editSetting('customproduct', $this->request->post);        
            
            $this->session->data['success'] = $this->language->get('text_success');
            
            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
                
        $this->data['heading_title'] = strip_tags($this->language->get('heading_title'));

        $this->data['text_enabled'] = $this->language->get('text_enabled');
        $this->data['text_disabled'] = $this->language->get('text_disabled');
        $this->data['text_content_top'] = $this->language->get('text_content_top');
        $this->data['text_content_bottom'] = $this->language->get('text_content_bottom');        
        $this->data['text_column_left'] = $this->language->get('text_column_left');
        $this->data['text_column_right'] = $this->language->get('text_column_right');
        $this->data['text_name'] = $this->language->get('text_name');
        $this->data['text_product_placeholder'] = $this->language->get('text_product_placeholder');
        $this->data['text_copyright'] = sprintf($this->language->get('text_copyright'), $this->version);
        $this->data['text_all'] = $this->language->get('text_all');
        
        $this->data['entry_name'] = $this->language->get('entry_name');
        $this->data['entry_product'] = $this->language->get('entry_product');
        $this->data['entry_image'] = $this->language->get('entry_image');
        $this->data['entry_layout'] = $this->language->get('entry_layout');
        $this->data['entry_position'] = $this->language->get('entry_position');
        $this->data['entry_status'] = $this->language->get('entry_status');
        $this->data['entry_category'] = $this->language->get('entry_category');
        $this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
        
        $this->data['button_save'] = $this->language->get('button_save');
        $this->data['button_cancel'] = $this->language->get('button_cancel');
        $this->data['button_add_module'] = $this->language->get('button_add_module');
        $this->data['button_remove'] = $this->language->get('button_remove');
        
         if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
        
        if (isset($this->error['image'])) {
            $this->data['error_image'] = $this->error['image'];
        } else {
            $this->data['error_image'] = array();
        }
                
          $this->data['breadcrumbs'] = array();

           $this->data['breadcrumbs'][] = array(
               'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
              'separator' => false
           );

           $this->data['breadcrumbs'][] = array(
               'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
              'separator' => ' :: '
           );
        
           $this->data['breadcrumbs'][] = array(
               'text'      => strip_tags($this->language->get('heading_title')),
            'href'      => $this->url->link('module/customproduct', 'token=' . $this->session->data['token'], 'SSL'),
              'separator' => ' :: '
           );
        
        $this->data['action'] = $this->url->link('module/customproduct', 'token=' . $this->session->data['token'], 'SSL');
        
        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        $this->data['token'] = $this->session->data['token'];

        if (isset($this->request->post['customproduct_product'])) {
            $this->data['customproduct_product'] = $this->request->post['customproduct_product'];
        } else {
            $this->data['customproduct_product'] = $this->config->get('customproduct_product');
        }    
                
        $this->load->model('catalog/product');
                
        if (isset($this->request->post['customproduct_product'])) {
            $products = explode(',', $this->request->post['customproduct_product']);
        } else {        
            $products = explode(',', $this->config->get('customproduct_product'));
        }
        
        $this->data['products'] = array();
        
        foreach ($products as $product_id) {
            $product_info = $this->model_catalog_product->getProduct($product_id);
            
            if ($product_info) {
                $this->data['products'][] = array(
                    'product_id' => $product_info['product_id'],
                    'name'       => $product_info['name']
                );
            }
        }    
            
        $this->data['modules'] = array();
        
        if (isset($this->request->post['customproduct_module'])) {
            $this->data['modules'] = $this->request->post['customproduct_module'];
        } elseif ($this->config->get('customproduct_module')) { 
            $this->data['modules'] = $this->config->get('customproduct_module');
        }    
        
        $this->data['module_copyright'] = @file_get_contents('http://panda-code.com/module_license.php?module='.urlencode($this->module).'&ver='.urlencode($this->version).'&site='.urlencode($_SERVER['HTTP_HOST']).'&email='.urlencode($this->config->get('config_email')).'&phone='.urlencode($this->config->get('config_telephone')));
            
        $this->data['category_array'] = $this->model_catalog_category->getAllCategories();
                
        $this->load->model('design/layout');
        
        $this->data['layouts'] = $this->model_design_layout->getLayouts();
        
        $this->load->model('localisation/language');
        
        $this->data['languages'] = $this->model_localisation_language->getLanguages();

        $this->template = 'module/customproduct.tpl';
        $this->children = array(
            'common/header',
            'common/footer'
        );
                
        $this->response->setOutput($this->render());
    }
    
    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/customproduct')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
        
        if (isset($this->request->post['customproduct_module'])) {
            foreach ($this->request->post['customproduct_module'] as $key => $value) {
                if (!$value['image_width'] || !$value['image_height']) {
                    $this->error['image'][$key] = $this->language->get('error_image');
                }
            }
        }
                
        if (!$this->error) {
            return true;
        } else {
            return false;
        }    
    }
}
?>