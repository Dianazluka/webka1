<?php
class SectionModel extends Model
{
    public function getSectionById(int $id)
    {
        $row = $this->db->query('
        Select *  
        From section 
        Where section_id = ?', [$id]);
        if (!empty($row)) {
            return $row[0];
        }
        return false;
    }
    public function getAllSections()
    {
        $row = $this->db->query('
        Select  section_id AS id, section_name, membership,   place_employment, reception_features, payment 
        From sections');
        if (!empty($row)) {
            return $row;
        }
        return false;
    }
    public function add($section_ID, $section_name, $membership, $place_employment, $reception_features, $payment)
    {
        $row = $this->db->query('INSERT INTO products ( section_name, membership,   place_employment, reception_features, payment 
) VALUES (?,?,?)', [
      $section_ID, 
      $section_name, 
      $membership, 
      $place_employment, 
      $reception_features, 
      payment
        ]);
        if (!empty($row)) {
            return $this->db->getLastId();
        }
        return false;
    }
    public function delete(int $id)
    {
        $row = $this->db->query('DELETE FROM products WHERE section_id = ? ', [$id]);
        if (!empty($row)) {
            return $row;
        }
        return false;
    }
}
?>
