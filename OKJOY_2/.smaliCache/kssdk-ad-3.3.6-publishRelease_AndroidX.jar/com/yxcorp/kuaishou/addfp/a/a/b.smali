.class public final Lcom/yxcorp/kuaishou/addfp/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/a/a;


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Lcom/yxcorp/kuaishou/addfp/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->d:Lcom/yxcorp/kuaishou/addfp/a/b/a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/a/b;Lcom/yxcorp/kuaishou/addfp/a/a/a;)Lcom/yxcorp/kuaishou/addfp/a/a/a;
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    return-object p1
.end method

.method public static final a()Lcom/yxcorp/kuaishou/addfp/a/a/b;
    .registers 1

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/d;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/a/b;Lcom/yxcorp/kuaishou/addfp/a/b/a;)Lcom/yxcorp/kuaishou/addfp/a/b/a;
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->d:Lcom/yxcorp/kuaishou/addfp/a/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Ljava/lang/String;
    .registers 1

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method static synthetic b(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Lcom/yxcorp/kuaishou/addfp/a/b/a;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->d:Lcom/yxcorp/kuaishou/addfp/a/b/a;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    const-string p1, "OaHelper has been initialized,return"

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    return-void

    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_1d

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->c:Ljava/util/concurrent/CountDownLatch;

    :cond_1d
    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/a/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/yxcorp/kuaishou/addfp/a/a/c;-><init>(Lcom/yxcorp/kuaishou/addfp/a/a/b;Lcom/yxcorp/kuaishou/addfp/a/a/a;Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    return-void
.end method

.method public final a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    :cond_7
    return-void

    :catchall_8
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_7
    return-void
.end method

.method public final c()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    const-string v0, "awaitCdOaid"

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/b;->c:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
