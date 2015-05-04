require 'digest/md5'

class WelcomeController < ApplicationController
  skip_before_action :check_session, only: [:login, :logout ]
  def login
    @message = ""
    
    if params[:u].start_with?("2")
      @member = Member.find_by_sql("SELECT * FROM members WHERE member_number ='" + params[:u] + "'")
        
      if @member.size < 1 then
        respond_to do |format|
          format.html { render 'welcome/home' }
          @message = "Login Failed"
        end
      else
        @member = @member[0]
        @password = Digest::MD5.hexdigest(params[:p])
     
        if @member.password == @password then
          session["login"] = true
          respond_to do |format|
          format.html { render 'welcome/login' }
           @message = "Login success member"
          end
        else
          respond_to do |format|
            format.html { render 'welcome/home' }
            flash.now[:alert] = 'Login failed'
          end
        end
      end
   
    
    elsif params[:u].start_with?("1")
    
      @admin = AdminStaff.find_by_sql("SELECT * FROM admin_staffs WHERE staff_number ='" + params[:u] + "'")
      if @admin.size < 1 then
        respond_to do |format|
        format.html { render 'welcome/home' }
        @message = "Login Failed no "
        end
      else
        @admin = @admin[0]
        @password = Digest::MD5.hexdigest(params[:p])
        
        if @admin.password == @password then
          session["login"] = true
          respond_to do |format|
            format.html { render 'welcome/login' }
            @message = "admin Login success"
          end
        else
          respond_to do |format|
            format.html { render 'welcome/home' }
            @message = "Login failed x"
          end
        end
      end
    end
  end
  
 def logout
   session["login"] = nil
   respond_to do |format|
        format.html { render 'welcome/home' }
      end
 end   

  
 end
