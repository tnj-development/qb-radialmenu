local Translations = {
    error = {
        --- garages
        not_enough = "Not enough money",
        not_impound = "Your car is not in impound",
        not_owned = "Vehicle not owned",
        no_vehicles = "You don't have any vehicles in this garage!",
        no_vehicles_impounded = "You don't have any impounded vehicles!",
        vehicle_at_depot = "Your vehicle may be at the depot!",
        impounded_by_police = "This vehicle was impounded by the police!",
        someone_inside = "Vehicle not stored, please check if is someone inside the car.",
        ---
        no_people_nearby = "No players nearby",
        no_vehicle_found = "No vehicle found",
        extra_deactivated = "Extra %{extra} has been deactivated",
        extra_not_present = "Extra %{extra} is not present on this vehicle",
        not_driver = "You're not the driver of the vehicle",
        vehicle_driving_fast = "This vehicle is going too fast",
        seat_occupied = "This seat is occupied",
        race_harness_on = "You have a race harness on, you can't switch",
        obj_not_found = "Couldn't create the requested object",
        not_near_ambulance = "You're not near an Ambulance",
        far_away = "You're too far away",
        stretcher_in_use = "This stretcher is already in use",
        not_kidnapped = "You did not kidnap this person",
        trunk_closed = "The trunk is closed",
        cant_enter_trunk = "You can't get in this trunk",
        already_in_trunk = "You're already in the trunk",
        someone_in_trunk = "Someone is already in the trunk"
    },
    success = {
        vehicle_parked = "Vehicle Parked",
        extra_activated = "Extra %{extra} has been activated",
        entered_trunk = "You're in the trunk"
    },
    info = {
        public_garage = "Public Garage",
        gang_garage = "Gang Garage",
        job_garage = "Job Garage",
        house_garage = "House Garage",
        impound = "Impound",
        my_vehicles = "My Vehicles",
        view_stored = "View your stored vehicles!",
        leave_garage = "⬅ Leave Garage",
        leave_depot = "⬅ Leave Depot",
        garage = "Garage: %{value}",
        depot = "Depot: %{value}",
        out = "Out",
        garaged = "Garaged",
        impounded = "Impounded By Police",
        garage_line = "State: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
        depot_line = "Plate: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
        garage_e = "~g~E~w~ - Garage",
        park_e = "~g~E~w~ - Park Vehicle",
        no_variants = "There don't seem to be any variants for this",
        wrong_ped = "This ped model does not allow for this option",
        nothing_to_remove = "You don't appear to have anything to remove",
        already_wearing = "You are already wearing that",
        switched_seats = "You are now on the %{seat}"
    },
    general = {
        command_description = "Open Radial Menu",
        push_stretcher_button = "~g~E~w~ - Push Stretcher",
        stop_pushing_stretcher_button = "~g~E~w~ - Stop Pushing",
        lay_stretcher_button = "~g~G~w~ - Lay On Stretcher",
        push_position_drawtext = "Push Here",
        get_off_stretcher_button = "~g~G~w~ - Get Off Stretcher",
        get_out_trunk_button = "[~g~E~w] Get out of the trunk",
        close_trunk_button = "[~g~G~w~] Close the trunk",
        open_trunk_button = "[~g~G~w~] Open the trunk",
        getintrunk_command_desc = "Get In Trunk",
        putintrunk_command_desc = "Put Player In Trunk"
    },
    options = {
        emergency_button = "Emergency Button",
        driver_seat = "Drivers Seat",
        passenger_seat = "Passenger Seat",
        other_seats = "Other Seat",
        rear_left_seat = "Rear Left Seat",
        rear_right_seat = "Rear Right Seat"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})