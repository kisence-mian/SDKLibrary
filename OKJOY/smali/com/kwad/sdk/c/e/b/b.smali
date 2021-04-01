.class public Lcom/kwad/sdk/c/e/b/b;
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

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/kwad/sdk/c/e/b/b$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/e/b/b$a;-><init>(Lcom/kwad/sdk/c/e/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/b;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/e/b/b;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v1, ""

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.huawei.hwid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/b;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_70

    move-result v0

    if-eqz v0, :cond_81

    :try_start_19
    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v2, Lcom/kwad/sdk/c/e/c/b$a;

    invoke-direct {v2, v0}, Lcom/kwad/sdk/c/e/c/b$a;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2}, Lcom/kwad/sdk/c/e/c/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/kwad/sdk/c/e/c/b$a;->a()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_5b
    .catchall {:try_start_19 .. :try_end_2d} :catchall_67

    move-result v0

    const-string v2, "HWDeviceIDHelper"

    :try_start_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID oaid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--boos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_50} :catch_5b
    .catchall {:try_start_30 .. :try_end_50} :catchall_67

    :try_start_50
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/b;->c:Landroid/content/ServiceConnection;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_70

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_57
    :try_start_57
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_7f

    :goto_5a
    return-object v0

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_67

    :try_start_5f
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/b;->c:Landroid/content/ServiceConnection;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_57

    :catchall_67
    move-exception v0

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/b;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_70} :catch_70

    :catch_70
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_74
    const-string v2, "HWDeviceIDHelper"

    const-string v3, "getOAID hw service not found"

    invoke-static {v2, v3}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a

    :catch_7f
    move-exception v1

    goto :goto_74

    :cond_81
    move-object v0, v1

    goto :goto_5a
.end method
