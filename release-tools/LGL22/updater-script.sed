ui_print("");
ui_print("");
ui_print("------------------------------------------------");
ui_print("@VERSION");
ui_print("  KBC Developers:");
ui_print("    Scotty");
ui_print("    HomuHomu");
ui_print("    ma34s");
ui_print("    sakuramilk");
ui_print("------------------------------------------------");
ui_print("");
show_progress(0.500000, 0);

ui_print("flashing @IMAGE image...");
package_extract_file("@IMAGE.img", "/tmp/@IMAGE.img");

#run_program("/mkdir",/tmp/loki");
package_extract_dir("tmp", "/tmp");
set_perm(0, 0, 0777, "/tmp/loki/loki_tool");
set_perm(0, 0, 0777, "/tmp/loki/loki.sh");

show_progress(0.700000, 0);
assert(run_program("/tmp/loki/loki.sh","@IMAGE") == 0);

show_progress(0.100000, 0);

ui_print("flash complete. Enjoy!");
set_progress(1.000000);

