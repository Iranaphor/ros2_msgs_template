path=$(dirname $0)/..
new_name=$1

echo $path
echo $new_name

if [ -n "$new_name" ] ; then

    mv $path/ros2_msgs_template $path/$new_name

    sed -i "s/ros2_msgs_template/$new_name/g" $path/README.md
    sed -i "s/ros2_msgs_template/$new_name/g" $path/package.xml
    sed -i "s/ros2_msgs_template/$new_name/g" $path/CMakeLists.txt

fi
