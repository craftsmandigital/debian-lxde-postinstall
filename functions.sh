

# Function for introdusing different sections in install.sh script
pretty_print_heading()
{
    # shift; shift;
    # Having shifted twice, the rest is now comments ...
    COMMENTS=$@

    printf "\n\n\n\n\n\n\n\n\n\n\n"
    yes "________________________________________________________________________" | head -n 5
    printf "\n====>  $COMMENTS ...\n"
    yes "________________________________________________________________________" | head -n 5
}
