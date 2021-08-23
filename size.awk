{
        Sum+=$5
    if (NR==1) {
        min=$5
        max=$5
        min_name=$9
        max_name=$9
    }
    
    if ($5 > max) {
        max=$5
        max_name=$9
    }
    
    if ($5 < min) {
        min=$5
        min_name=$9
    }
    }
    END{ print "SUM: ", Sum/1024/1024, " MB"
        print "Files: ", NR
        if (stats==1) {
        print "Largest file: ", max_name, "Size:", max/1024/1024, " MB"
        print "Smallest file: ", min_name, "Size: ",min/1024/1024, " MB"
        }
    }
