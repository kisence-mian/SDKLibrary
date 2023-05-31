.class public Lcom/sigmob/sdk/base/common/utils/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/utils/s;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_c

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Lcom/sigmob/sdk/base/common/utils/r;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/common/utils/r;-><init>(Lcom/sigmob/sdk/base/common/utils/q$1;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_28
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v2, Lcom/sigmob/sdk/base/common/utils/t;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/r;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sigmob/sdk/base/common/utils/t;-><init>(Landroid/os/IBinder;)V

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/s;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/t;->b()Z

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/sigmob/sdk/base/common/utils/s;-><init>(Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_53

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_b

    :cond_48
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_53
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method
