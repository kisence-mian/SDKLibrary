.class public Lcom/loongcheer/interactivesdk/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingInterface;,
        Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 23
    const-string v0, "Cannot call in the main thread, You must call in the other thread"

    return-object v0

    .line 25
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 26
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    new-instance v1, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;-><init>(Lcom/loongcheer/interactivesdk/utils/DeviceUtils$1;)V

    .line 28
    .local v1, "connection":Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 33
    :try_start_30
    new-instance v3, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingInterface;

    .line 34
    invoke-virtual {v1}, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 35
    .local v3, "adInterface":Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingInterface;
    invoke-virtual {v3}, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_41

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 35
    return-object v4

    .line 37
    .end local v3    # "adInterface":Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingInterface;
    :catchall_41
    move-exception v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 38
    throw v3

    .line 40
    :cond_46
    const-string v3, ""

    return-object v3
.end method
