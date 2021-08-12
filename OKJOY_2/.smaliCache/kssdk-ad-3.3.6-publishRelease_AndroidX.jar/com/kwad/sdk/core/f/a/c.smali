.class public Lcom/kwad/sdk/core/f/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/f/a/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/kwad/sdk/core/f/a/c$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/f/a/c$1;-><init>(Lcom/kwad/sdk/core/f/a/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/f/a/c;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/kwad/sdk/core/f/a/c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/f/a/c;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/f/a/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v0, "LenovoDeviceIDHelper"

    const-string v1, ""

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.zui.deviceidservice"

    const-string v4, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/kwad/sdk/core/f/a/c;->c:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_5d

    if-eqz v2, :cond_66

    :try_start_1b
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    new-instance v3, Lcom/kwad/sdk/core/f/b/c$a;

    invoke-direct {v3, v2}, Lcom/kwad/sdk/core/f/b/c$a;-><init>(Landroid/os/IBinder;)V

    invoke-interface {v3}, Lcom/kwad/sdk/core/f/b/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID oaid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_42} :catch_4c
    .catchall {:try_start_1b .. :try_end_42} :catchall_4a

    :try_start_42
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/c;->c:Landroid/content/ServiceConnection;

    :goto_46
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_5d

    goto :goto_66

    :catchall_4a
    move-exception v2

    goto :goto_55

    :catch_4c
    move-exception v2

    :try_start_4d
    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_4a

    :try_start_50
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/c;->c:Landroid/content/ServiceConnection;

    goto :goto_46

    :goto_55
    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/kwad/sdk/core/f/a/c;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception v2

    const-string v3, "getOAID Lenovo service not found"

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    return-object v1
.end method
