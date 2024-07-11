.class public final Lcom/yxcorp/kuaishou/addfp/a/b/a/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/yxcorp/kuaishou/addfp/a/b/a/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->d:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/a/f;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/a/f;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/a/e;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->e:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/a/e;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->d:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    :try_start_2
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a:Lcom/yxcorp/kuaishou/addfp/a/b/a/b;

    invoke-interface {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->a(Landroid/os/IInterface;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->e()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->b:Landroid/content/Context;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/yxcorp/kuaishou/addfp/a/b/b;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.asus.msa.action.ACCESS_DID"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.msa.SupplementaryDID"

    const-string v3, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a(Z)V

    goto :goto_43

    :cond_2a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a:Lcom/yxcorp/kuaishou/addfp/a/b/a/b;

    if-eqz p1, :cond_3b

    invoke-direct {p0, v3}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a(Z)V

    goto :goto_43

    :cond_3b
    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a(Z)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception p1

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a(Z)V

    :goto_43
    return-void
.end method
