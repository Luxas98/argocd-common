Common applications we configure using kustomize and deploy using argocd
========================================================================


Useful links: 

  * https://kustomize.io/
  * https://argoproj.github.io/argo-cd/
    

Folder overview:

    argocd ->
        * projects - contains example argocd project
        * apps - contains common argocd apps we are using
        
    products ->
        * contains while "packages/products" which are linking multiple top level folders
        
    tools -> 
        * modules commonly used together
        
    other folders ->
        * stand allone kustomization files for modules
        
# Example usages

## Create argocd manifest

`kustomize build argocd/projects/overlays/dev`
`kustomize build argocd/apps/overlays/dev`

## Create module manifest

`kustomize build redis/base`

## Deploy manifest

`kustomize build argocd/projects/overlays/dev | kubectl -f -`
`kustomize build argocd/redis/overlays/dev | kubectl -f -`