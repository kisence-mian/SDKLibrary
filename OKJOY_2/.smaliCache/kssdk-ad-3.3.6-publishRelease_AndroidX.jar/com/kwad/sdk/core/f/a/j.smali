.class public Lcom/kwad/sdk/core/f/a/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/kwad/sdk/core/f/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/kwad/sdk/core/f/a/j$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/f/a/j$1;-><init>(Lcom/kwad/sdk/core/f/a/j;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/f/a/j;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/kwad/sdk/core/f/a/j;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/f/a/j;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/f/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v0, "ZTEDeviceIDHelper"

    const-string v1, ""

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.mdid.msa"

    const-string v4, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.bun.msa.action.bindto.service"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.bun.msa.param.pkgname"

    iget-object v4, p0, Lcom/kwad/sdk/core/f/a/j;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/j;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/kwad/sdk/core/f/a/j;->c:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID isBind="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3f} :catch_83

    if-eqz v2, :cond_8c

    :try_start_41
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    new-instance v3, Lcom/kwad/sdk/core/f/b/f$a;

    invoke-direct {v3, v2}, Lcom/kwad/sdk/core/f/b/f$a;-><init>(Landroid/os/IBinder;)V

    invoke-interface {v3}, Lcom/kwad/sdk/core/f/b/f;->a()Ljava/lang/String;

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
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_68} :catch_72
    .catchall {:try_start_41 .. :try_end_68} :catchall_70

    :try_start_68
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/j;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/j;->c:Landroid/content/ServiceConnection;

    :goto_6c
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_83

    goto :goto_8c

    :catchall_70
    move-exception v2

    goto :goto_7b

    :catch_72
    move-exception v2

    :try_start_73
    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_70

    :try_start_76
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/j;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/j;->c:Landroid/content/ServiceConnection;

    goto :goto_6c

    :goto_7b
    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/j;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/kwad/sdk/core/f/a/j;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_83} :catch_83

    :catch_83
    move-exception v2

    const-string v3, "getOAID hw service not found"

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_8c
    :goto_8c
    return-object v1
.end method
