.class public Lcom/kwad/sdk/c/e/b/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
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

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/kwad/sdk/c/e/b/c$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/e/b/c$a;-><init>(Lcom/kwad/sdk/c/e/b/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/c;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/e/b/c;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v1, ""

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.zui.deviceidservice"

    const-string v3, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/c;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_62

    move-result v0

    if-eqz v0, :cond_73

    :try_start_19
    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/c;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v2, Lcom/kwad/sdk/c/e/c/c$a;

    invoke-direct {v2, v0}, Lcom/kwad/sdk/c/e/c/c$a;-><init>(Landroid/os/IBinder;)V

    invoke-interface {v2}, Lcom/kwad/sdk/c/e/c/c;->c()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_4d
    .catchall {:try_start_19 .. :try_end_29} :catchall_59

    move-result-object v1

    const-string v0, "LenovoDeviceIDHelper"

    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID oaid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_42} :catch_4d
    .catchall {:try_start_2c .. :try_end_42} :catchall_59

    :try_start_42
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/c;->c:Landroid/content/ServiceConnection;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_62

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_49
    :try_start_49
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_71

    :goto_4c
    return-object v0

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_59

    :try_start_51
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/c;->c:Landroid/content/ServiceConnection;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_49

    :catchall_59
    move-exception v0

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/c;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_62} :catch_62

    :catch_62
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_66
    const-string v2, "LenovoDeviceIDHelper"

    const-string v3, "getOAID Lenovo service not found"

    invoke-static {v2, v3}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    :catch_71
    move-exception v1

    goto :goto_66

    :cond_73
    move-object v0, v1

    goto :goto_4c
.end method
