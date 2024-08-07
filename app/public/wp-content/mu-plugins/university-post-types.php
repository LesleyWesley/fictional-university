<?php
    function university_post_types() {
      //Event Post Type
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

      //Program Post type
      register_post_type("program", array(
        "show_in_rest" => true,
        "supports" => array("title", "editor"),
        "has_archive" => true,
        "rewrite" => array("slug" => "programs"),
        "public" => true,
        "menu_icon" => "dashicons-awards",
        "labels" => array(
          "name" => "Programs",
          "add_new_item" => "Add New Program",
          "edit_item" => "Edit Program",
          "all_items" => "All Programs",
          "singular_name" => "Program"
        )
      ));

      //Professor Post type
      register_post_type("professor", array(
        "show_in_rest" => true,
        "supports" => array("title", "editor"),
        "public" => true,
        "menu_icon" => "dashicons-welcome-learn-more",
        "labels" => array(
          "name" => "Professors",
          "add_new_item" => "Add New Professor",
          "edit_item" => "Edit Professor",
          "all_items" => "All Professors",
          "singular_name" => "Professor"
        )
      ));
    }

    add_action("init", "university_post_types");
?>
