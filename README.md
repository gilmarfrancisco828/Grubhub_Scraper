# Grubhub Scraper

## Save States and Cities
> python3 Cities.py

## Save Chains
> python3 Chains.py

## Save Cuisines
> python3 Cuisines.py

## Run Iterative
> python3 main.py config.txt

## Run with Threads
> python3 main_th.py config.txt


### Config File Template (especific items)
```
  first line 'STATE' or 'CITIE'
  State Name 1/Citie Name 1
  ...
  State Name n/Citie Name n
  NUM_THREAD_WORKERS
```
### Config File Template (all items)
```
  first line 'STATE' or 'CITIE'
  *
  NUM_THREAD_WORKERS
```

> The folder "db" contains the export of each table from database.db
