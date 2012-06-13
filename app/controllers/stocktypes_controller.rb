class StocktypesController < ApplicationController
  # GET /stocktypes
  # GET /stocktypes.json
  def index
    @stocktypes = Stocktype.all
    @stocktype  = Stocktype.new(params[:stocktype])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @stocktypes }
    end
  end

  # GET /stocktypes/1
  # GET /stocktypes/1.json
  def show
    @stocktype = Stocktype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @stocktype }
    end
  end

  # GET /stocktypes/new
  # GET /stocktypes/new.json
  def new
    @stocktype = Stocktype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @stocktype }
    end
  end

  # GET /stocktypes/1/edit
  def edit
    @stocktype = Stocktype.find(params[:id])
  end

  # POST /stocktypes
  # POST /stocktypes.json
  def create
    @stocktype = Stocktype.new(params[:stocktype])

    respond_to do |format|
      if @stocktype.save
        format.js
        #format.html { redirect_to @stocktype, :notice => 'Stocktype was successfully created.' }
        #format.json { render :json => @stocktype, :status => :created, :location => @stocktype }
      else
        format.html { render :action => "new" }
        format.json { render :json => @stocktype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stocktypes/1
  # PUT /stocktypes/1.json
  def update
    @stocktype = Stocktype.find(params[:id])

    respond_to do |format|
      if @stocktype.update_attributes(params[:stocktype])
        format.html { redirect_to @stocktype, :notice => 'Stocktype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @stocktype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stocktypes/1
  # DELETE /stocktypes/1.json
  def destroy
    @stocktype = Stocktype.find(params[:id])
    @stocktype.destroy

    respond_to do |format|
      format.js
      #format.html { redirect_to :action => :index } 
      #format.json { head :ok }
    end
  end
end
