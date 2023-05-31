.class public Lcom/tds/tapdb/b/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/tapdb/b/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "getGmsAdId method Cannot be called from the main thread"

    invoke-static {v0, v1}, Lcom/tds/tapdb/b/k;->a(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/tds/tapdb/b/f$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/tds/tapdb/b/f$b;-><init>(Lcom/tds/tapdb/b/f$a;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_4c

    invoke-virtual {v1}, Lcom/tds/tapdb/b/f$b;->b()Z

    move-result p0

    if-eqz p0, :cond_36

    invoke-virtual {v1}, Lcom/tds/tapdb/b/f$b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    monitor-enter v1

    const-wide/16 v4, 0x1388

    :try_start_39
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_44
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    :try_start_3c
    invoke-virtual {v1}, Lcom/tds/tapdb/b/f$b;->a()Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_42
    move-exception p0

    goto :goto_4a

    :catch_44
    move-exception p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    monitor-exit v1

    return-object v3

    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_42

    throw p0

    :cond_4c
    return-object v3
.end method
