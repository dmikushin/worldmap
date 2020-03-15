echo "Cleaning previous builds first.."
rm -rf dist
rm -rf build
rm -rf worldmap.egg-info
rm -rf worldmap//data//SVG_MAPS
rm -rf worldmap//data//citycode.txt
rm -rf *.svg

echo "Making new wheel.."
echo ""
python setup.py bdist_wheel
echo ""

echo "Making source build .."
echo ""
python setup.py sdist
echo ""

read -p "Press [Enter] to install the pip package..."
pip install -U dist/worldmap-0.1.0-py3-none-any.whl
echo ""

read -p ">twine upload dist/* TO UPLOAD TO PYPI..."
echo ""

read -p "Press [Enter] key to close window..."
