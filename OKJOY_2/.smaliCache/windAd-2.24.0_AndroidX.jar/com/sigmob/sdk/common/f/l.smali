.class public Lcom/sigmob/sdk/common/f/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/f/l$c;,
        Lcom/sigmob/sdk/common/f/l$a;,
        Lcom/sigmob/sdk/common/f/l$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/l$b;
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Lcom/sigmob/sdk/common/f/l$a;

    invoke-direct {v0, v2}, Lcom/sigmob/sdk/common/f/l$a;-><init>(Lcom/sigmob/sdk/common/f/l$1;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_28
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Lcom/sigmob/sdk/common/f/l$c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/f/l$a;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/common/f/l$c;-><init>(Landroid/os/IBinder;)V

    new-instance v2, Lcom/sigmob/sdk/common/f/l$b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/f/l$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/f/l$c;->b()Z

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/sigmob/sdk/common/f/l$b;-><init>(Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_53

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    :cond_48
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_53
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1
.end method
