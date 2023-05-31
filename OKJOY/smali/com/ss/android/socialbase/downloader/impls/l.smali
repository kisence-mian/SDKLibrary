.class public Lcom/ss/android/socialbase/downloader/impls/l;
.super Ljava/lang/Object;
.source "DownloadProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/impls/l$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/downloader/n;

.field private static volatile b:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;
    .registers 6

    .prologue
    .line 21
    if-eqz p0, :cond_30

    .line 22
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_2a

    .line 23
    const-class v1, Lcom/ss/android/socialbase/downloader/impls/l;

    monitor-enter v1

    .line 24
    :try_start_9
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_29

    .line 25
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/ss/android/socialbase/downloader/downloader/n;

    aput-object v4, v2, v3

    new-instance v3, Lcom/ss/android/socialbase/downloader/impls/l$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/ss/android/socialbase/downloader/impls/l$a;-><init>(Z)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/downloader/n;

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 29
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2d

    .line 31
    :cond_2a
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 42
    :goto_2c
    return-object v0

    .line 29
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0

    .line 33
    :cond_30
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_58

    .line 34
    const-class v1, Lcom/ss/android/socialbase/downloader/impls/l;

    monitor-enter v1

    .line 35
    :try_start_37
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_57

    .line 36
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/ss/android/socialbase/downloader/downloader/n;

    aput-object v4, v2, v3

    new-instance v3, Lcom/ss/android/socialbase/downloader/impls/l$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/ss/android/socialbase/downloader/impls/l$a;-><init>(Z)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/downloader/n;

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 40
    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_37 .. :try_end_58} :catchall_5b

    .line 42
    :cond_58
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    goto :goto_2c

    .line 40
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method
