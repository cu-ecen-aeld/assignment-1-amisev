filesdir="$1"
searchstr="$2"

if  [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Error: files dir or search str is empty"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Error: directory '$filesdir' does not exist"
    exit 1
fi

# num_files=$(find "$filesdir" -type f -name "$searchstr" | wc -l)
num_files=$(grep -rl "$searchstr" "$filesdir" | wc -l)
num_lines=$(grep -r -I "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_lines"
