.class public final Lcom/anythink/core/b/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/a/a$c;,
        Lcom/anythink/core/b/a/a$b;,
        Lcom/anythink/core/b/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/anythink/core/b/a/a$a;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_4f

    .line 50
    new-instance v1, Lcom/anythink/core/b/a/a$b;

    invoke-direct {v1, p0, v3}, Lcom/anythink/core/b/a/a$b;-><init>(Lcom/anythink/core/b/a/a;B)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 55
    :try_start_35
    new-instance v0, Lcom/anythink/core/b/a/a$c;

    invoke-virtual {v1}, Lcom/anythink/core/b/a/a$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/anythink/core/b/a/a$c;-><init>(Lcom/anythink/core/b/a/a;Landroid/os/IBinder;)V

    .line 56
    new-instance v2, Lcom/anythink/core/b/a/a$a;

    invoke-virtual {v0}, Lcom/anythink/core/b/a/a$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/core/b/a/a$c;->b()Z

    move-result v0

    invoke-direct {v2, p0, v3, v0}, Lcom/anythink/core/b/a/a$a;-><init>(Lcom/anythink/core/b/a/a;Ljava/lang/String;Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4b} :catch_51
    .catchall {:try_start_35 .. :try_end_4b} :catchall_53

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    return-object v2

    .line 47
    :catch_4f
    move-exception v0

    throw v0

    .line 59
    :catch_51
    move-exception v0

    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 61
    :catchall_53
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 64
    :cond_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
