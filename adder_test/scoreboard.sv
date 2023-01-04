class scoreboard;
   
  mailbox mon2scb;
  int no_transactions;
  
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  
  task main;
    transaction trans;
    forever begin
      mon2scb.get(trans);
        if((trans.a+trans.b) == trans.c)
          $display("Result is as Expected");
        else
          $error("Wrong Result.\n\tExpeced: %0d Actual: %0d",(trans.a+trans.b),trans.c);
        no_transactions++;
      trans.display("[ Scoreboard ]");
    end
  endtask
  
endclass
