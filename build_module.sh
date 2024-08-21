#!/bin/bash

echo "Getting Misc Files ........."
cp ./misc\ files/*.* ./ >> Process_Log.txt

echo "Start Processing..."
echo "______________________________"
echo

# 运行一系列 Python 脚本
python process_init.py
python process_global_variables.py
python process_strings.py
python process_skills.py
python process_music.py
python process_animations.py
python process_meshes.py
python process_sounds.py
python process_skins.py
python process_map_icons.py
python process_factions.py
python process_items.py
python process_scenes.py
python process_troops.py
python process_particle_sys.py
python process_scene_props.py
python process_tableau_materials.py
python process_presentations.py
python process_party_tmps.py
python process_parties.py
python process_quests.py
python process_info_pages.py
python process_scripts.py
python process_mission_tmps.py
python process_game_menus.py
python process_simple_triggers.py
python process_dialogs.py
python process_global_variables_unused.py
python process_postfx.py

# 删除字节码文件和特定的 Python 脚本
rm -f *.pyc
rm -f header_*.py

# 复制和删除文件
cp ./ID_*.py "./misc files/" >> Process_Log.txt
rm -f ID_*.py
rm -f process_*.py

echo
echo "All Finish ..."
echo "Cleaning up..."
echo "______________________________"
echo
echo "Script processing has ended."

