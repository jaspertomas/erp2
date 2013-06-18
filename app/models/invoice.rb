# == Schema Information
#
# Table name: invoices
#
#  id                 :integer          not null, primary key
#  customer_id        :integer
#  customer_name      :string(255)
#  invno              :string(255)
#  ponumber           :string(255)
#  payonly            :decimal(, )
#  total              :decimal(, )
#  cheque             :string(255)
#  chequedate         :date
#  date               :date
#  duedate            :date
#  datepaid           :date
#  terms_id           :integer
#  salesman_id        :integer
#  technician_id      :integer
#  template_id        :integer
#  cash               :decimal(, )
#  chequeamt          :decimal(, )
#  credit             :decimal(, )
#  discrate           :string(255)
#  discamt            :decimal(, )
#  saletype           :string(255)
#  dsrdeduction       :decimal(, )
#  balance            :decimal(, )
#  chequedata         :string(255)
#  checkcleardate     :date
#  checkcollectevents :boolean
#  notes              :text
#  status             :string(255)
#  hidden             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Invoice < ActiveRecord::Base
  attr_accessible :balance, :cash, :checkcleardate, :checkcollectevents, :cheque, :chequeamt, :chequedata, :chequedate, :credit, :customer_id, :customer_name, :date, :datepaid, :discamt, :discrate, :dsrdeduction, :duedate, :invno, :payonly, :ponumber, :salesman_id, :saletype, :technician_id, :template_id, :terms_id, :total, :hidden, :notes, :status
#  validates_date :chequedate
  validates_date :date
#  validates_date :duedate
#  validates_date :datepaid
  validates :invno, :presence => true, :uniqueness => true
  
  belongs_to :customer, :class_name => "Customer", :foreign_key => 'customer_id'
  belongs_to :salesman, :class_name => "Employee", :foreign_key => 'salesman_id'
  belongs_to :technician, :class_name => "Employee", :foreign_key => 'technician_id'
  belongs_to :template, :class_name => "InvoiceTemplate", :foreign_key => 'template_id'
  belongs_to :terms, :class_name => "Term", :foreign_key => 'terms_id'
  has_many :details, :class_name => "InvoiceDetail", :foreign_key => 'invoice_id'
  has_many :payments, :class_name => "InvoicePayment", :foreign_key => 'invoice_id'
    
  
  def gencustomer
    #no customer selected by combo box
    if customer_id=="" || customer_id==nil
      #no customer name given
      if customer_name=="" || customer_name==nil
        customer=Customer.find_by_name("(Anonymous)")      
      else
        customer=Customer.find_by_name(customer_name)
        customer=Customer.create(name: customer_name) if customer==nil
      end
      update_attributes(customer_id:customer.id,customer_name:"")
    #customer selected by combo box
    else
      update_attributes(customer_name:"")
    end
  end
  

  def commission(employee)
    # product.isservice values: 
     #0 = commission to salesman, 
     #1 = commission to technician, 
     #2: commission to both (panel, but technician commission 3%), 
     #3: commission to none      
    commission=0
    commissionrate=employee.commission/1000

    if employee.is_technician==1
      self.details.each do |detail|
        #if item is service (is_service=1), add to commission
        isservice=detail.product.is_service;
        commission += detail.total if(isservice==1 || isservice==2)
      end
    elsif employee.is_technician==0
        self.details.each do |detail|
          #if item is not service (is_service=0), add to commission
          isservice=detail.product.is_service;
          commission+=detail.total if(isservice==0 || isservice==2)
        end
    end
    commission
  end
  def chequepayments
    Event.find_by_sql('select * from events where type=="ChequeCollect" and parent_class == "Invoice" and parent_id==#{self.id} ')
  end

#
#    function getCommissionTotal($employee)
#    {
#      $commission=0;
#      $commissionrate=$employee->getCommission()/1000;
#  
#      #if employee is technician
#      if($employee->getIsTechnician()==1)
#      {
#        #foreach item
#        foreach($this->getInvoicedetail() as $detail)
#        {
#          #if item is service (is_service=1), add to commission
#          $isservice=$detail->getProduct()->getIsService();
#           if($isservice==1)$commission+=$detail->getTotal()*$commissionrate;
#           else if($isservice==2)$commission+=$detail->getTotal()*0.03; #fixed commission rate for control panels
#        }
#      }
#      #else if employee is salesman
#      elseif($employee->getIsTechnician()==0)
#      {
#        #foreach item
#        foreach($this->getInvoicedetail() as $detail)
#        {
#          #if item is not service (is_service=0), add to commission
#          $isservice=$detail->getProduct()->getIsService();
#          if($isservice==0 or $isservice==2)$commission+=$detail->getTotal()*$commissionrate;
#       }
#      }
#      return $commission;
#    }
#    function getUpdateChequedata()
#    {
#      $cheques=$this->getChequepayments();
#      $chequedata=array();
#      if($this->getCheque())
#        $chequedata[]=$this->getCheque()." (P".$this->getChequeamt()." ".$this->getChequedate().")";
#      
#      foreach($cheques as $cheque)
#      {
#        $chequedata[]=$cheque->getDetail1()." (P".$cheque->getAmount()." ".$cheque->getDetail2().") ";
#      }
#      $this->setChequedata(implode(", ",$chequedata));
#    }
  def calc
    

    #initialize variables

    _total=0
    description=""
    details.each { |detail| _total+=detail.total  }
    self.total=_total-self.discamt.to_i

      
      case self.saletype
      when "Cash"    
        self.cash=self.total
        self.chequeamt=0
        self.credit=0
        description="Cash Sale"
      when "Cheque"    
        self.cash=0
        self.chequeamt=self.total
        self.credit=0
        description="Check Sale"
      when "Account"    
        self.cash=0
        self.chequeamt=0
        self.credit=self.total
        description="Credit Sale"
      else
        description="Mixed Sale"
        self.cash=self.total-self.chequeamt-self.credit
      end
      
#      #ACCOUNTING
#      self.salesAccountEntry(self.total,description);
#
#      #if it exists, and >0, update
#      #if it doesn't exist, and >0, create
#      #if it exists, and 0, delete
#      #if it doesn't exist, and 0, do nothing
#      if(self.cash!=0)
#        self.setCashOnHandAccountEntry(self.cash,description);
#      elsif(self.cashOnHandAccountEntry)
#        self.cashOnHandAccountEntry.delete;
#      end
#
#      if(self.credit!=0)
#        self.setReceivablesAccountEntry(self.credit,description);
#      elsif(self.getReceivablesAccountEntry)
#        self.getReceivablesAccountEntry.delete;
#      end
#        
#      if(self.chequeamt!=0)
#        self.setInChecksAccountEntry(self.chequeamt,description);
#      else if(self.getInChecksAccountEntry)
#        self.getInChecksAccountEntry.delete;
#      end
#
#      #adjust balance according to payables acctentries
#      _balance=self.receivablesTotal;
#
#      self.balance(_balance);
#      if(self.status=="Cancelled");
#      else if(self.total>0 and _balance==0)
#        self.status("Paid");
#      else
#        self.status("Pending");
#      end

  end
end
