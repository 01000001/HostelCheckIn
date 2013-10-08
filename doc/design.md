Design document of HostelCheckIn
=============

- a list of database tables and fields (and their types) that you’ve decided to implement;

- a list of classes and methods (and their return types and/or arguments) that you’ve decided to implement;

- photos of whiteboard drawings;

- more advanced sketches of UIs.

# Section 1 – Purpose of project/sub-system
The app has to implement all the features that a receptionist might require during checking in a guest,
such as: allow the users to browse rooms, record guests' details, assign guests to beds, modify details of guests.
<br>Please find Readme.md for more information on purpose/functionality.

# Section 2 – List of database tables and fields

table "beds":

    t.string   "room"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    
table "bookings":

    t.datetime "check_in_date"
    t.datetime "check_out_date"
    t.integer  "guest_id"
    t.integer  "bed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    
table "guests":

    t.string   "name"
    t.integer  "locker"
    t.integer  "nights"
    t.integer  "price"
    t.integer  "deposit"
    t.datetime "created_at"
    t.datetime "updated_at"
    
# Section 3 – A list of classes and methods

Implemented models:
<ul><i>
<li>Bed</li>
<li>Guest</li>
<li>Booking</li>
</ul>

The following association system is implemented:

    class Bed < ActiveRecord::Base
      has_many :bookings
      has_many :guests, through: :bookings
    end


    class Guest < ActiveRecord::Base
      has_many :bookings
      has_many :beds, through: :bookings
    end
    

    class Booking < ActiveRecord::Base
      belongs_to :guest
      belongs_to :bed
      validates :bed_id, :guest_id, presence: true
    end

I'm going to genereate these models by scaffolding, therefor index, show, new, edit, create, update and destroy
classes are automaticly created for every model.
A search function is planned to be implemented that enables the users to search for Guests.


# Style guide

Commenting & Documentation

    Preferebly comment on each function, short descreption about it's purpose (I'm not going to comment out
    code that is generated with scaffolds though)

Indentation

    Preferred identation style:

    def create
      @course = Course.new(course_params)
      
      respond_to do |format|
        if @course.save
          format.html { redirect_to @course, notice: 'Course was successfully created.' }
          format.json { render action: 'show', status: :created, location: @course }
        else
          format.html { render action: 'new' }
          format.json { render json: @course.errors, status: :unprocessable_entity }
        end
      end
    end

Code Grouping

    Code lines that are that are suppose to serve the same task are going to be arringed in blocks and these
    blocks will be separated with spaces.

Naming Scheme
    
    Prefer usage of camelCase, such as: NewObjec, PriceIndex etc..
    
DRY Principle

    The same piece of code should not be repeated over and over again.

No Deep Nesting

    Preferablu reduce level of nesting, 

Limited Line Length

    Avoid writing horizontally long lines of code.

Capitalize SQL Special Words

    Capitalize SQL special words and function names to to distinguish them from your table and column names.
    
Source for style document:
<a href='http://net.tutsplus.com/tutorials/html-css-techniques/top-15-best-practices-for-writing-super-readable-code/'>
Top 15+ Best Practices for Writing Super Readable Code</a>
