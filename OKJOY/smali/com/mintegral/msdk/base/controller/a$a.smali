.class public final Lcom/mintegral/msdk/base/controller/a$a;
.super Ljava/lang/Object;
.source "MTGSDKContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/controller/a$a$c;,
        Lcom/mintegral/msdk/base/controller/a$a$b;,
        Lcom/mintegral/msdk/base/controller/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/controller/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/controller/a;)V
    .registers 2

    .prologue
    .line 576
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a$a;->a:Lcom/mintegral/msdk/base/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/mintegral/msdk/base/controller/a$a$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 596
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 597
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 601
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_4f

    .line 606
    new-instance v1, Lcom/mintegral/msdk/base/controller/a$a$b;

    invoke-direct {v1, p0, v3}, Lcom/mintegral/msdk/base/controller/a$a$b;-><init>(Lcom/mintegral/msdk/base/controller/a$a;B)V

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 611
    :try_start_35
    new-instance v0, Lcom/mintegral/msdk/base/controller/a$a$c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a$a$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mintegral/msdk/base/controller/a$a$c;-><init>(Lcom/mintegral/msdk/base/controller/a$a;Landroid/os/IBinder;)V

    .line 612
    new-instance v2, Lcom/mintegral/msdk/base/controller/a$a$a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a$a$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a$a$c;->b()Z

    move-result v0

    invoke-direct {v2, p0, v3, v0}, Lcom/mintegral/msdk/base/controller/a$a$a;-><init>(Lcom/mintegral/msdk/base/controller/a$a;Ljava/lang/String;Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4b} :catch_51
    .catchall {:try_start_35 .. :try_end_4b} :catchall_53

    .line 617
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 613
    return-object v2

    .line 603
    :catch_4f
    move-exception v0

    throw v0

    .line 615
    :catch_51
    move-exception v0

    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 617
    :catchall_53
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 620
    :cond_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
