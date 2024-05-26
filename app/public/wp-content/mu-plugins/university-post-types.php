<?php
    function university_post_types() {
      register_post_type("event", array(
        "show_in_rest" => true,
        "supports" => array("title", "editor", "excerpt"),
        "has_archive" => true,
        "rewrite" => array("slug" => "events"),
        "public" => true,
        "menu_icon" => "dashicons-calendar",
        "labels" => array(
          "name" => "Events",
          "add_new_item" => "Add New Event",
          "edit_item" => "Edit Event",
          "all_items" => "All Events",
          "singular_name" => "Event"
        )
      ));
    }

    add_action("init", "university_post_types");
?>
