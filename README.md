# Installation

To install this on your umbrel, you can add this repository through the Umbrel user interface as shown in the following demo:

https://user-images.githubusercontent.com/10330103/197889452-e5cd7e96-3233-4a09-b475-94b754adc7a3.mp4

Alternatively, you can use the Umbrel CLI as described below.

To add an app store:
```
sudo ~/umbrel/scripts/repo add https://github.com/getAlby/umbrel-community-app-store.git

sudo ~/umbrel/scripts/repo update
```

To install an app from the app store
```
sudo ~/umbrel/scripts/app install alby-nostr-wallet-connect
```

To remove an app store:
```
sudo ~/umbrel/scripts/repo remove https://github.com/getAlby/umbrel-community-app-store.git
```
