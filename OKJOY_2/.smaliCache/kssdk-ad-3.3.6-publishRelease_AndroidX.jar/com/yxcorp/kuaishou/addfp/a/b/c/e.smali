.class public final Lcom/yxcorp/kuaishou/addfp/a/b/c/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

.field private c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/b/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->d:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/c/f;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/f;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->e:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    :try_start_16
    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p2, p1, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "bindService Successful!"

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x7d0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    if-eqz p1, :cond_46

    invoke-direct {p0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Z)V

    goto :goto_5a

    :cond_46
    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Z)V

    goto :goto_5a

    :cond_4a
    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Z)V

    const-string p1, "bindService Failed!"

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_16 .. :try_end_52} :catchall_53

    return-void

    :catchall_53
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Z)V

    :goto_5a
    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;Lcom/yxcorp/kuaishou/addfp/a/b/c/a;)Lcom/yxcorp/kuaishou/addfp/a/b/c/a;
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    return-object p1
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->d:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    :try_start_2
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    invoke-interface {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->a(Landroid/os/IInterface;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

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
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/a;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-interface {v1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/a;->c()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    move-exception v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1f

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    if-eqz v1, :cond_24

    invoke-interface {v1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_24

    :cond_1f
    :goto_1f
    const-string v0, "empty pkg"

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1f

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    if-eqz v1, :cond_24

    invoke-interface {v1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_24

    :cond_1f
    :goto_1f
    const-string v0, "empty pkg"

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "unBind Service"

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b:Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    return-void
.end method
