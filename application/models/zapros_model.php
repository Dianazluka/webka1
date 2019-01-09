<?php
class ZaprosModel extends Model
{
  public function getZaprosBYId(int $id)
  {
     $row = $this->db->query('
        SELECT c.rank, p.result, s.surname, se.section_name, s.s_section_ID
        FROM Participation p JOIN Competition c
        ON p.p_сompetition_ID = c.сompetition_ID
        JOIN Sportsman s
        ON p.p_sportsman_ID = s.sportsman_ID
        JOIN Section se
        ON s.s_section_ID = se.section_ID
        WHERE se.section_name = 'Тяжелая атлетика'  AND c.rank = 'Городские'  AND s.s_section_ID = '5', [$id]);
        if (!empty($row)) {
            return $row[0];
        }
        return false;
  }
  public function getRankZapros()
  {
    $row = $this->db->query('
     SELECT   s.sportsman_ID AS [Спортсмен], AVG(s.age) AS [Возраст]
      FROM Participation p JOIN Competition c
      ON p.p_сompetition_ID = c.сompetition_ID
      JOIN Sportsman s
      ON p.p_sportsman_ID = s.sportsman_ID
      JOIN Section se
      ON s.s_section_ID = se.section_ID
      WHERE se.section_name = 'Тяжелая атлетика' 
      GROUP BY s.sportsman_ID
       if (!empty($row)) {
            return $row[0];
        }
        return false;
        }
        
    public function addSection(string $section_ID, $section_name, $membership, $place_employment, $reception_features, $trainer, $payment)
    {
        $row = $this->db->query('INSERT INTO section (int section_ID, varchar section_name, varchar membership,  varchar place_employment, varchar reception_features, varchar trainer, varchar payment) VALUES (?, ?)', 
        [$section_ID, $section_name, $membership, $place_employment, $reception_features, $trainer, $payment]);
        if (!$row) {
            echo json_encode($this->db->getError());
            return $row;
        }
               if ($row)
            return $id;
        else
            return -1;
    }
     public function addSportsman(int  $sportsman_ID, int $s_section_ID, varchar $surname, int  $age, varchar $address,  varchar $phone, varchar $growth, varchar $weight,  varchar $achievement)
    {
        $row = $this->db->query('INSERT INTO Sportsman (sportsman_ID, s_section_ID, surname, age, address, phone, growth, weight, achievement) VALUES (?, ?)', 
        [$sportsman_ID, $s_section_ID, $surname, $age, $address, $phone, $growth, $weight, $achievement]);
        if (!$row) {
            echo json_encode($this->db->getError());
            return $row;
        }
               if ($row)
            return $id;
        else
            return -1;
    }
     public function addCompetition(int $сompetition_ID, varchar $date_competition,  varchar $number_participants, varchar $rank)
    {
        $row = $this->db->query('INSERT INTO Competition (сompetition_ID, date_competition, number_participants, rank) VALUES (?, ?)', 
        [$сompetition_ID, $date_competition, $number_participants, $rank]);
        if (!$row) {
            echo json_encode($this->db->getError());
            return $row;
        }
               if ($row)
            return $id;
        else
            return -1;
    }
    
     public function addParticipation(int $p_sportsman_ID, int  $p_сompetition_ID, varchar result, varchar place)
    {
        $row = $this->db->query('INSERT INTO Participation (date_competition, number_participants, rank) VALUES (?, ?)', 
        [$date_competition, $number_participants, $rank]);
        if (!$row) {
            echo json_encode($this->db->getError());
            return $row;
        }
               if ($row)
            return $id;
        else
            return -1;
    }
   
  }
 
  
  ?>
