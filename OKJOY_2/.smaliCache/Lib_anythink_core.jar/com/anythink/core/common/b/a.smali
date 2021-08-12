.class public final Lcom/anythink/core/common/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/b/a$c;,
        Lcom/anythink/core/common/b/a$b;,
        Lcom/anythink/core/common/b/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/anythink/core/common/b/a$a;
    .registers 6

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_5a

    .line 51
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_58

    .line 55
    nop

    .line 57
    new-instance v0, Lcom/anythink/core/common/b/a$b;

    invoke-direct {v0, p0, v2}, Lcom/anythink/core/common/b/a$b;-><init>(Lcom/anythink/core/common/b/a;B)V

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 62
    :try_start_2d
    new-instance v1, Lcom/anythink/core/common/b/a$c;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/a$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/anythink/core/common/b/a$c;-><init>(Lcom/anythink/core/common/b/a;Landroid/os/IBinder;)V

    .line 63
    new-instance v2, Lcom/anythink/core/common/b/a$a;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/a$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/anythink/core/common/b/a$c;->b()Z

    move-result v1

    invoke-direct {v2, p0, v3, v1}, Lcom/anythink/core/common/b/a$a;-><init>(Lcom/anythink/core/common/b/a;Ljava/lang/String;Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_43} :catch_4a
    .catchall {:try_start_2d .. :try_end_43} :catchall_48

    .line 64
    nop

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    return-object v2

    .line 68
    :catchall_48
    move-exception v1

    goto :goto_4c

    .line 66
    :catch_4a
    move-exception v1

    :try_start_4b
    throw v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_48

    .line 68
    :goto_4c
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 69
    throw v1

    .line 71
    :cond_50
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :catch_58
    move-exception p1

    throw p1

    .line 47
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
