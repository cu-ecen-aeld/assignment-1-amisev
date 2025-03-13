writefile="$1"
writestr="$2"
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: File to write and str to write should not be empty"
    exit 1
fi

echo "$writestr" > "$writefile"

if [ $? -eq 0 ]; then
    echo "Successfully wrote '$writestr' to '$writefile'."
else
    echo "Error: Failed to write to '$writefile'."
    exit 1
fi