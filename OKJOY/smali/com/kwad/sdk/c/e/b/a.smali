.class public Lcom/kwad/sdk/c/e/b/a;
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

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/kwad/sdk/c/e/b/a$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/e/b/a$a;-><init>(Lcom/kwad/sdk/c/e/b/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/a;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/e/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v1, ""

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.asus.msa.SupplementaryDID"

    const-string v4, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/a;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_6c

    move-result v0

    if-eqz v0, :cond_7d

    :try_start_23
    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v2, Lcom/kwad/sdk/c/e/c/a$a;

    invoke-direct {v2, v0}, Lcom/kwad/sdk/c/e/c/a$a;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2}, Lcom/kwad/sdk/c/e/c/a$a;->a()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_57
    .catchall {:try_start_23 .. :try_end_33} :catchall_63

    move-result-object v1

    const-string v0, "ASUSDeviceIDHelper"

    :try_start_36
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
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_57
    .catchall {:try_start_36 .. :try_end_4c} :catchall_63

    :try_start_4c
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/a;->c:Landroid/content/ServiceConnection;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_6c

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_53
    :try_start_53
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_7b

    :goto_56
    return-object v0

    :catch_57
    move-exception v0

    :try_start_58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    :try_start_5b
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/a;->c:Landroid/content/ServiceConnection;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_53

    :catchall_63
    move-exception v0

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/a;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6c} :catch_6c

    :catch_6c
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_70
    const-string v2, "ASUSDeviceIDHelper"

    const-string v3, "getOAID asus service not found;"

    invoke-static {v2, v3}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    :catch_7b
    move-exception v1

    goto :goto_70

    :cond_7d
    move-object v0, v1

    goto :goto_56
.end method
