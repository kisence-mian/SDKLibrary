.class public interface abstract Lcom/pgl/sys/ces/out/ISdkInfo;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getConnectionInfo()Landroid/net/wifi/WifiInfo;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getHardwareAddress()Ljava/lang/String;
.end method

.method public abstract getLatitude()Ljava/lang/String;
.end method

.method public abstract getLongitude()Ljava/lang/String;
.end method

.method public abstract getScanResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method
