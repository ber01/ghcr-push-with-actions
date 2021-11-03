# ghcr-push-with-actions

GitHub Actions에서 GitHub Container Registry에 이미지를 Push하는 예제

## 운영체제

- MacOS BigSur

## 전제조건

- [Docker](https://www.docker.com/)

    ```
    brew install --cask docker
    ```

- [Minikube](https://minikube.sigs.k8s.io/docs/start/)

    ```
    brew install minikube
    ```

    ```
    brew install kubectl
    ```

## 실행 with Docker

### 이미지 다운로드

```bash
docker pull ghcr.io/ber01/ghcr-push-with-actions:1.0.0
```

### 실행

```bash
docker run -d -p 3000:3000 ghcr.io/ber01/ghcr-push-with-actions
```

### 테스트

```bash
curl localhost:3000

> Hello World! [v.1.0.x]
```

## 실행 with Minikube

### 디플로이먼트 생성

```bash
kubectl apply -f ghcr-push-with-actions.yaml --context minikube
```

### 포트포워딩

```bash
kubectl port-forward service/ghcr-push-with-actions 3000:3000 --context minikube
```

### 테스트

```bash
curl localhost:3000

> Hello World! v.1.0.0
```

## 참고

- [GitHub Actions에서 GitHub Container Registry에 이미지 푸시하기](https://blog.outsider.ne.kr/1531)