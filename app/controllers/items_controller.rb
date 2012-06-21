class ItemsController < ApplicationController
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    
    @stockgroups = 
       [
      "Beverages",
      "Canned food",
      "Condiments",
      "Dairy",
      "Dessert",
      "Dryfoods",
      "Household",
      "Produce",
      "Protein",
      "Spices"
      ];

    @stocktypes = Stocktype.all
    @item = Item.new(params[:item])
    @stocktype  = Stocktype.new(params[:stocktype])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @item }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
    @items = Item.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @items }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
		@items = Item.all
		@item = Item.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @item }
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
				 #format.html { render :partial => 'item', :object => @item }   
				 format.js 
#        format.html { redirect_to :action => :index, :notice => 'Item was successfully created.' }
#        format.json { render :json => @item, :status => :created, :location => @item }
      else
        format.html { render :action => "new" }
        format.json { render :json => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, :notice => 'Item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.js
			#format.html { redirect_to :action => :index }
      #format.json { head :ok }
    end
  end
end
