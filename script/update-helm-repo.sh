export sitepageurl="https://adeptusnull.github.io/helm-chart/"


# package helm charts
helm package testimage/*
# index helm charts into index.yaml
helm repo index --url $sitepageurl ./
