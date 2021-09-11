#! /usr/local/microsoft/powershell/7/pwsh

$startdir = $(Get-Location).Path
cd charts
rm *.tgz
rm index.yaml

$sitepageurl = "https://adeptusnull.github.io/helm-chart/charts"

# get chart dirs
$getchartfoldername = Get-ChildItem -Directory
# create chart packages
$getchartfoldername |  helm package ./$($_.Name)/*
# index charts
helm repo index $(Get-Location).Path --url $sitepageurl

chdir $startdir