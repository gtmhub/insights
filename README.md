# Gtmhub Insights

Ready to use insights for Gtmhub OKRs platform

## How to contribute an insight?

Insight is represented by a single directory within the system directory. Insights are completley convention-based so it is important that the every insight has all the files named exactly as specified.

Files that define an insight:
* **view.html** (HTML version of the user interface for the insight)
* **algorithm.sql** (SQL version of the query used to calculate the insight)
* **screenshot.png** (Screenshot of the insight)
* **manifest.json** (Additional information about the insight)

## Insight manifest.json file

Manifest file provides additional information for the insight. The schema of the manifest file is following:

* **title** - user friendly name of the insight
* **description** - short description of what the insight does
* **tags** - a string array of the insight tags
