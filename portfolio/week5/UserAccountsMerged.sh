#!/bin/bash



        echo
        echo
        echo "Welcome. Please read the the following menu."
        echo
        echo "1. Format all user information."
        echo
        echo "2. Format only entries that contain '/bin/bash' as their default shell."
        echo
        echo
        echo "Please enter your selection: "

        read selection

    case $selection in

        1)  echo 
            echo "As selected, all user accounts displayed below: "
            echo
            echo

            awk 'BEGIN {

                FS=":";

                print "=========================================================================================================";

                print "|| \033[34mUsername\033[0m          || \033[34mUser ID\033[0m || \033[34mGroup ID\033[0m || \033[34mHome\033[0m                             || \033[34mShell\033[0m              ||";

                print "=========================================================================================================";    

                }

                {

                printf("|| \033[33m%-17s\033[0m || \033[35m%-7s\033[0m || \033[35m%-8s\033[0m || \033[35m%-32s\033[0m || \033[35m%-18s\033[0m || \n", $1, $3, $4, $6, $7);

                }


                END {

                print("=========================================================================================================")
    
                print("=========================================================================================================\n");

            }' /etc/passwd;;


        2)  echo
            echo "As selected, only users containg '/bin/bash' as their default shell are displayed below: "
            echo
            echo

            awk 'BEGIN {

                        

                FS=":";

                print "=========================================================================================================";

                print "|| \033[34mUsername\033[0m          || \033[34mUser ID\033[0m || \033[34mGroup ID\033[0m || \033[34mHome\033[0m                             || \033[34mShell\033[0m              ||";

                print "=========================================================================================================";    

                }
                
                $7 == "/bin/bash"{ 
        
                    printf("|| \033[33m%-17s\033[0m || \033[35m%-7s\033[0m || \033[35m%-8s\033[0m || \033[35m%-32s\033[0m || \033[35m%-18s\033[0m || \n", $1, $3, $4, $6, $7);

                }


                END {

                print("=========================================================================================================")
    
                print("=========================================================================================================\n");

            }' /etc/passwd 

    esac