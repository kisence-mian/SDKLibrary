.class public final Lcom/yxcorp/kuaishou/addfp/a/b/g/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/yxcorp/kuaishou/addfp/a/b/g/a;

.field private b:Ljava/lang/String;

.field private c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/CountDownLatch;

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/g/a;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->e:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/g/e;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/g/e;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/g/d;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/g/d;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->e:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    :try_start_2
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/g/a;

    invoke-interface {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->a(Landroid/os/IInterface;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

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
.method public final a()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/g/a;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/g/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->f:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/b/b;)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->d:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "sumsang off"

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a(Z)V

    goto :goto_3f

    :cond_23
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x7d0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/g/a;

    if-eqz p1, :cond_34

    invoke-direct {p0, v2}, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a(Z)V

    goto :goto_3f

    :cond_34
    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a(Z)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    return-void

    :catchall_38
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a(Z)V

    :goto_3f
    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/g/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/g/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method
