<?php
class model_cetba extends CI_Model  
{
public function get_menu() 
        {
        $this->db->order_by('idmenu', 'ASC');
        $query = $this->db->get('menu');
        
    
        return $query->result();
    
        }
  }