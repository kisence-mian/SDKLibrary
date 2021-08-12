.class public Lcom/sigmob/sdk/common/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcom/sigmob/sdk/common/c/a;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/common/c/a;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/c/a;->b:Lcom/sigmob/sdk/common/c/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/sigmob/sdk/common/c/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/common/c/a;->b:Lcom/sigmob/sdk/common/c/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/sigmob/sdk/common/c/a;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/c/a;-><init>()V

    sput-object v1, Lcom/sigmob/sdk/common/c/a;->b:Lcom/sigmob/sdk/common/c/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/sigmob/sdk/common/c/a;->b:Lcom/sigmob/sdk/common/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/c/a;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/c/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sigmob/sdk/common/c/a$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/common/c/a$1;-><init>(Lcom/sigmob/sdk/common/c/a;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x3e8

    :try_start_13
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/lang/Throwable;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_d

    :cond_17
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "com.sigmob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.wind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_34
    const-string v0, "crash"

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityCrash;->WindCrash(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityCrash;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/mta/PointEntityCrash;->sendServe()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_43
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    goto :goto_47

    :catchall_3e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_47

    :catch_43
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/c/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sigmob/sdk/common/c/a;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_9
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    iget-object v0, p0, Lcom/sigmob/sdk/common/c/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_15
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :goto_1c
    return-void
.end method
