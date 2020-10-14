<?php
class Pages extends CI_Controller {
        public function index()
        {            
                $this->load->model('model_cetba');
                $data['polozky'] = $this->model_cetba->get_menu();

		$this->load->view('templates/header', $data);                
		$this->load->view('pages/maturita', $data);  
		$this->load->view('templates/footer');   
	}   
        
        public function kategorie()
        {            
               $this->load->model('model_cetba');
                $data['polozky'] = $this->model_cetba->get_menu();
                
                $data['kategorie'] = $this->db->query('SELECT * FROM kategorie_knihy ORDER BY idkategorie')->result();
		$this->load->view('templates/header', $data);
		$this->load->view('pages/kategorie', $data);  
		$this->load->view('templates/footer');   
	}
        
        public function knihy_kategorie($id) 
        {

                  $this->load->model('model_cetba');
                $data['polozky'] = $this->model_cetba->get_menu();
		$data['nazev'] = $this->db->query('SELECT * FROM kategorie_knihy WHERE idkategorie= '.$id)->result();
		$data['knihy'] = $this->db->query('SELECT * FROM knihy WHERE kategorie_idkategorie= '.$id)->result();
		
		$this->load->view('pages/knihy_kategorie', $data);  
                		$this->load->view('templates/header', $data);

		$this->load->view('templates/footer');            
        }
        
        public function knihy()
        {            
                $this->load->model('model_cetba');
                $data['polozky'] = $this->model_cetba->get_menu();
                $data['knizky'] = $this->db->query('SELECT * FROM knihy ORDER BY kategorie_idkategorie')->result();
		$this->load->view('templates/header', $data);                
		$this->load->view('pages/knihy', $data);  
		$this->load->view('templates/footer');
               	}   
                
        public function maturita()
        {            
               $this->load->model('model_cetba');
                $data['polozky'] = $this->model_cetba->get_menu();
		$this->load->view('templates/header', $data);
		$this->load->view('pages/maturita', $data);  
		$this->load->view('templates/footer');  
	}  
}