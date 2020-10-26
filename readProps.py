def read_props():
    import sys
    all = False
    try:
        file_name = sys.argv[1]
        f = open(file_name, "r")
        content = f.readlines()
        start_with = content[0].replace("\n", "")
        items = [i.replace("\n", "") for i in content[1:-1]]
        NUM_WORKERS = int(content[-1])
        # print(start_with, items, NUM_WORKERS)
        if items[0] == "*":
            all = True
        f.close()
        return start_with, items, NUM_WORKERS, all
    except IndexError:
        print('Missing config file!')
        exit()
