require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Apartment size", with: @booking.apartment_size_id
    fill_in "Book date", with: @booking.book_date
    fill_in "Book time", with: @booking.book_time
    fill_in "Box", with: @booking.box_id
    fill_in "Destination address", with: @booking.destination_address
    fill_in "Distance", with: @booking.distance
    fill_in "Mover", with: @booking.mover_id
    fill_in "Pickup address", with: @booking.pickup_address
    fill_in "Quotation", with: @booking.quotation
    fill_in "Rating", with: @booking.rating_id
    fill_in "User", with: @booking.user_id
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Apartment size", with: @booking.apartment_size_id
    fill_in "Book date", with: @booking.book_date
    fill_in "Book time", with: @booking.book_time
    fill_in "Box", with: @booking.box_id
    fill_in "Destination address", with: @booking.destination_address
    fill_in "Distance", with: @booking.distance
    fill_in "Mover", with: @booking.mover_id
    fill_in "Pickup address", with: @booking.pickup_address
    fill_in "Quotation", with: @booking.quotation
    fill_in "Rating", with: @booking.rating_id
    fill_in "User", with: @booking.user_id
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
