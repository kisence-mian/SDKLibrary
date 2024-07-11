.class public Lcom/yxcorp/kuaishou/addfp/android/Orange;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static volatile b:Lcom/yxcorp/kuaishou/addfp/android/Orange;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->f()V

    return-void
.end method

.method public static a()Lcom/yxcorp/kuaishou/addfp/android/Orange;
    .registers 2

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/android/Orange;->b:Lcom/yxcorp/kuaishou/addfp/android/Orange;

    if-nez v0, :cond_17

    const-class v0, Lcom/yxcorp/kuaishou/addfp/android/Orange;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/Orange;->b:Lcom/yxcorp/kuaishou/addfp/android/Orange;

    if-nez v1, :cond_12

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/android/Orange;

    invoke-direct {v1}, Lcom/yxcorp/kuaishou/addfp/android/Orange;-><init>()V

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/android/Orange;->b:Lcom/yxcorp/kuaishou/addfp/android/Orange;

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
    sget-object v0, Lcom/yxcorp/kuaishou/addfp/android/Orange;->b:Lcom/yxcorp/kuaishou/addfp/android/Orange;

    return-object v0
.end method

.method private f()V
    .registers 3

    :try_start_0
    const-string v0, "sgcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a:Z

    const-string v0, "so loaded"

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    const-string v1, "so load failed"

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a:Z

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private g()Z
    .registers 2

    sget-boolean v0, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static native getClock(Landroid/content/Context;[BI)Ljava/lang/String;
.end method

.method private static native getMagic(Landroid/content/Context;[BI)[B
.end method

.method private static native jniCommand(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;[BI)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, ""
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_b
    invoke-static {p1, p2, p3}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->getClock(Landroid/content/Context;[BI)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const v1, 0x110010

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->jniCommand(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public declared-synchronized b(Landroid/content/Context;[BI)[B
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->g()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_a
    :try_start_a
    invoke-static {p1, p2, p3}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->getMagic(Landroid/content/Context;[BI)[B

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const v1, 0x120001

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->jniCommand(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const v1, 0x120005

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->jniCommand(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const v1, 0x110013

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->jniCommand(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method
