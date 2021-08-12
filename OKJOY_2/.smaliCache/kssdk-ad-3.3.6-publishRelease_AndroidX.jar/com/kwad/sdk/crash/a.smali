.class public Lcom/kwad/sdk/crash/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static volatile b:Z

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwad/sdk/crash/a;->b:Z

    sput-boolean v0, Lcom/kwad/sdk/crash/a;->c:Z

    return-void
.end method

.method public static a()V
    .registers 5

    sget-boolean v0, Lcom/kwad/sdk/crash/a;->b:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/crash/a;->b:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ex-uploader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/crash/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/kwad/sdk/crash/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kwad/sdk/crash/a$4;

    invoke-direct {v1}, Lcom/kwad/sdk/crash/a$4;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v3, Lcom/kwad/sdk/crash/c;->f:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    return-void
.end method

.method public static a(Lcom/kwad/sdk/crash/b;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/crash/b;->g:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/kwad/sdk/crash/a;->c:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/crash/a;->c:Z

    :try_start_d
    iget-object v0, p0, Lcom/kwad/sdk/crash/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kwad/sdk/crash/b;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/sdk/crash/b;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kwad/sdk/crash/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/crash/d;->a(Lcom/kwad/sdk/crash/b;)V

    invoke-static {}, Lcom/kwad/sdk/crash/a;->d()V

    new-instance v0, Lcom/kwad/sdk/crash/c/d;

    iget-object p0, p0, Lcom/kwad/sdk/crash/b;->g:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/crash/c/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/kwad/sdk/crash/a;->a()V
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_31

    goto :goto_32

    :catchall_31
    move-exception p0

    :goto_32
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/crash/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/crash/a$1;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/kwad/sdk/crash/a;->f()V

    return-void
.end method

.method static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/kwad/sdk/crash/a;->e()V

    return-void
.end method

.method private static d()V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/crash/c/c;->d()Lcom/kwad/sdk/crash/c/c;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/crash/a/a;->b()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/crash/a$2;

    invoke-direct {v2}, Lcom/kwad/sdk/crash/a$2;-><init>()V

    new-instance v3, Lcom/kwad/sdk/crash/a$3;

    invoke-direct {v3}, Lcom/kwad/sdk/crash/a$3;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/crash/c/c;->a(Ljava/io/File;Lcom/kwad/sdk/crash/e;Lcom/kwad/sdk/crash/report/c;)V

    return-void
.end method

.method private static e()V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/kwad/sdk/crash/a;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_16

    sget-object v0, Lcom/kwad/sdk/crash/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1d

    :cond_16
    sget-object v0, Lcom/kwad/sdk/crash/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_1d

    :catchall_1c
    move-exception v0

    :cond_1d
    :goto_1d
    return-void
.end method

.method private static f()V
    .registers 0

    invoke-static {}, Lcom/kwad/sdk/crash/a;->g()V

    return-void
.end method

.method private static g()V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/crash/report/d;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/report/d;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/crash/c/c;->d()Lcom/kwad/sdk/crash/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/crash/c/c;->a()Lcom/kwad/sdk/crash/report/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/crash/report/d;->a(Lcom/kwad/sdk/crash/report/c;)V

    invoke-static {}, Lcom/kwad/sdk/crash/a/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/crash/report/d;->a(Ljava/io/File;)V

    return-void
.end method
