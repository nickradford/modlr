module Modlr
  ##
  #  modlr :class, number_of_records, {:field => :type, :field => type}
  #  
  #  If I have a User class, with fields name (string), and age (int), then
  #  `modlr :user, 100, {:name => :name, :age => :age}`
  #  will create 100 user records with names and ages which make sense.
  #
  #
  ##  
  def initialize
  
  end
  
  class Modlr
    def self.modlr(model, number, &args)
        model.new.is_a?(ActiveRecord::Base)
        count = model.count
        if count >= number
          "No new records created: #{model} currently has #{count} records." 
        end
      
    end
  end
  
  private
  
  def self.rand_first_name
    self.fnames[rand(self.FNAMES.count)]
  end
  def self.fnames
            ["JAMES", "JOHN", "ROBERT", "MICHAEL", "WILLIAM", 
            "DAVID", "RICHARD", "CHARLES", "JOSEPH", "THOMAS", 
            "CHRISTOPHER", "DANIEL", "PAUL", "MARK", "DONALD", 
            "GEORGE", "KENNETH", "STEVEN", "EDWARD", "BRIAN", 
            "RONALD", "ANTHONY", "KEVIN", "JASON", "MATTHEW", 
            "GARY", "TIMOTHY", "JOSE", "LARRY", "JEFFREY", 
            "FRANK", "SCOTT", "ERIC", "STEPHEN", "ANDREW", 
            "RAYMOND", "GREGORY", "JOSHUA", "JERRY", "DENNIS", 
            "WALTER", "PATRICK", "PETER", "HAROLD", "DOUGLAS", 
            "HENRY", "CARL", "ARTHUR", "RYAN", "ROGER", "JOE", 
            "JUAN", "JACK", "ALBERT", "JONATHAN", "JUSTIN", 
            "TERRY", "GERALD", "KEITH", "SAMUEL", "WILLIE", 
            "RALPH", "LAWRENCE", "NICHOLAS", "ROY", "BENJAMIN", 
            "BRUCE", "BRANDON", "ADAM", "HARRY", "FRED", "WAYNE", 
            "BILLY", "STEVE", "LOUIS", "JEREMY", "AARON", "RANDY", 
            "HOWARD", "EUGENE", "CARLOS", "RUSSELL", "BOBBY", 
            "VICTOR", "MARTIN", "ERNEST", "PHILLIP", "TODD", "JESSE", 
            "CRAIG", "ALAN", "SHAWN", "CLARENCE", "SEAN", "PHILIP", 
            "CHRIS", "JOHNNY", "EARL", "JIMMY", "ANTONIO", "DANNY", 
            "BRYAN", "TONY", "LUIS", "MIKE", "STANLEY", "LEONARD", 
            "MARY", "PATRICIA", "LINDA", "BARBARA", "ELIZABETH", 
            "JENNIFER", "MARIA", "SUSAN", "MARGARET", "DOROTHY", 
            "LISA", "NANCY", "KAREN", "BETTY", "HELEN",  
            "DONNA", "CAROL", "RUTH", "SHARON", "MICHELLE", 
            "LAURA", "SARAH", "KIMBERLY", "DEBORAH", "JESSICA", 
            "SHIRLEY", "CYNTHIA", "ANGELA", "MELISSA", "BRENDA", 
            "AMY", "ANNA", "REBECCA", "VIRGINIA", "KATHLEEN", 
            "PAMELA", "MARTHA", "DEBRA", "AMANDA", "STEPHANIE", 
            "CAROLYN", "CHRISTINE", "MARIE", "JANET", "CATHERINE", 
            "FRANCES", "ANN", "JOYCE", "DIANE", "ALICE", 
            "JULIE", "HEATHER", "TERESA", "DORIS", "GLORIA", 
            "EVELYN", "JEAN", "CHERYL", "MILDRED", "KATHERINE", 
            "JOAN", "ASHLEY", "JUDITH", "ROSE", "JANICE", 
            "KELLY", "NICOLE", "JUDY", "CHRISTINA", "KATHY", 
            "THERESA", "BEVERLY", "DENISE", "TAMMY", "IRENE", 
            "JANE", "LORI", "RACHEL", "MARILYN", "ANDREA", 
            "KATHRYN", "LOUISE", "SARA", "ANNE", "JACQUELINE", 
            "WANDA", "BONNIE", "JULIA", "RUBY", "LOIS", 
            "TINA", "PHYLLIS", "NORMA", "PAULA", "DIANA", 
            "ANNIE", "LILLIAN", "EMILY", "ROBIN", "SANDRA"]
  end
  
  

  
end