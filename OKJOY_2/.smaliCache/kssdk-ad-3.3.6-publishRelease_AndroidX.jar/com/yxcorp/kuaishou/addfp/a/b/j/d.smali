.class public final Lcom/yxcorp/kuaishou/addfp/a/b/j/d;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field public a:Lcom/yxcorp/kuaishou/addfp/a/b/j/a;

.field private b:Ljava/lang/String;

.field private c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

.field private d:Landroid/content/Context;

.field private f:Ljava/util/concurrent/CountDownLatch;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.mdid.msa"

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/j/a;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->f:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/j/e;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/e;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/j/d;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/j/d;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->f:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    :try_start_2
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/j/a;

    invoke-interface {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->a(Landroid/os/IInterface;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->e()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;
    .registers 1

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/j/f;->a()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    move-exception p0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/j/a;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/a;->a()Ljava/lang/String;

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

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/j/a;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/j/a;->c()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    :cond_10
    return-void

    :catchall_11
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/b/b;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->c:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b(Landroid/content/Context;)Z

    move-result p2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_71

    const-string v1, "com.bun.msa.param.pkgname"

    const/4 v2, 0x1

    if-eqz p2, :cond_33

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->e:Ljava/lang/String;

    const-string v5, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.bun.msa.action.start.service"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_71

    :try_start_26
    const-string p2, "com.bun.msa.param.runinset"

    invoke-virtual {v3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_71

    goto :goto_33

    :catch_2f
    move-exception p2

    :try_start_30
    invoke-static {p2}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.mdid.msa"

    const-string v4, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.bun.msa.action.bindto.service"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_5c

    const-string p1, "zte off"

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a(Z)V

    goto :goto_78

    :cond_5c
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x7d0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/j/a;

    if-eqz p1, :cond_6d

    invoke-direct {p0, v2}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a(Z)V

    goto :goto_78

    :cond_6d
    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a(Z)V
    :try_end_70
    .catchall {:try_start_30 .. :try_end_70} :catchall_71

    return-void

    :catchall_71
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a(Z)V

    :goto_78
    return-void
.end method

.method public final c()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/j/a;

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-interface {v1}, Lcom/yxcorp/kuaishou/addfp/a/b/j/a;->b()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    move-exception v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return v0
.end method
