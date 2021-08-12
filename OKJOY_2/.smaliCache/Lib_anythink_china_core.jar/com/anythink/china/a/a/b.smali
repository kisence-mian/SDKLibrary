.class public final Lcom/anythink/china/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/china/a/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 23
    new-instance v0, Lcom/anythink/china/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/a/b$1;-><init>(Lcom/anythink/china/a/a/b;)V

    iput-object v0, p0, Lcom/anythink/china/a/a/b;->b:Landroid/content/ServiceConnection;

    .line 38
    iput-object p1, p0, Lcom/anythink/china/a/a/b;->c:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .registers 7

    .line 43
    const-string v0, "com.asus.msa.SupplementaryDID"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/anythink/china/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    .line 46
    goto :goto_11

    .line 45
    :catchall_d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :goto_11
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 49
    const-string v3, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcom/anythink/china/a/a/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/china/a/a/b;->b:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 53
    if-eqz v0, :cond_55

    .line 55
    :try_start_30
    iget-object v0, p0, Lcom/anythink/china/a/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 56
    new-instance v2, Lcom/anythink/china/a/a/a;

    invoke-direct {v2, v0}, Lcom/anythink/china/a/a/a;-><init>(Landroid/os/IBinder;)V

    .line 57
    invoke-virtual {v2}, Lcom/anythink/china/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {p1, v0, v1}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_44} :catch_4d
    .catchall {:try_start_30 .. :try_end_44} :catchall_45

    .line 69
    return-void

    .line 65
    :catchall_45
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    .line 69
    :goto_4c
    return-void

    .line 61
    :catch_4d
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    goto :goto_4c

    .line 72
    :cond_55
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    .line 76
    return-void
.end method
