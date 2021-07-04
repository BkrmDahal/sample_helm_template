export RELEASE_NAME="who"
export KUBE_NAMESPACE="api"
export DEPLOYS=$(helm ls -n $KUBE_NAMESPACE | grep $RELEASE_NAME | wc -l)
if [ ${DEPLOYS}  -eq 0 ];
then helm install $RELEASE_NAME \
--namespace=$KUBE_NAMESPACE \
-f values.yaml ./helm_charts; 
else 
helm upgrade $RELEASE_NAME \
--namespace=$KUBE_NAMESPACE \
-f values.yaml ./helm_charts ; 
fi

