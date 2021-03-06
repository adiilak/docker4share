kubectl create role developer-role --resource=pod,svc,pvc --verb="*" --namespace=development

kubectl -n development create rolebinding developer-rolebinding --role=developer-role --user=drogo

kubectl config set-credentials drogo --client-certificate=/root/drogo.crt --client-key=/root/drogo.key

kubectl config set-context developer --cluster=kubernetes  --user=drogo

kubectl config use-context developer
