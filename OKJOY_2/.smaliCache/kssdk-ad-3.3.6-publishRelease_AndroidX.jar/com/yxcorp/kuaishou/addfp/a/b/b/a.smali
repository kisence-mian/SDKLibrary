.class public final Lcom/yxcorp/kuaishou/addfp/a/b/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/yxcorp/kuaishou/addfp/a/b/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:J

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->e:J

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/b/b;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/b/b;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->f:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;Lcom/yxcorp/kuaishou/addfp/a/b/b/d;)Lcom/yxcorp/kuaishou/addfp/a/b/b/d;
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    return-object p1
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->d:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    :try_start_2
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    invoke-interface {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->a(Landroid/os/IInterface;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b;

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

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->f:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/yxcorp/kuaishou/addfp/a/b/b;)V
    .registers 10

    const-string v0, "com.huawei.hwid"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_7
    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance p1, Landroid/content/Intent;

    const-string v4, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->e:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "hua wei lala  : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->f:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_45

    invoke-direct {p0, v3}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Z)V

    goto :goto_7c

    :cond_45
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x7d0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    if-eqz p1, :cond_71

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "lalala "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Z)V

    goto :goto_7c

    :cond_71
    invoke-direct {p0, v3}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Z)V
    :try_end_74
    .catchall {:try_start_7 .. :try_end_74} :catchall_75

    return-void

    :catchall_75
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Z)V

    :goto_7c
    return-void
.end method
