.class public Lcom/ss/android/socialbase/downloader/impls/l;
.super Ljava/lang/Object;
.source "DownloadProxy.java"


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/downloader/l;

.field private static volatile b:Lcom/ss/android/socialbase/downloader/downloader/l;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;
    .registers 2

    .line 21
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/l;

    if-eqz p0, :cond_1c

    .line 22
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez p0, :cond_19

    .line 23
    monitor-enter v0

    .line 24
    :try_start_9
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez p0, :cond_14

    .line 25
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/o;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 27
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p0

    .line 29
    :cond_19
    :goto_19
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    return-object p0

    .line 31
    :cond_1c
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez p0, :cond_31

    .line 32
    monitor-enter v0

    .line 33
    :try_start_21
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez p0, :cond_2c

    .line 34
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 36
    :cond_2c
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw p0

    .line 38
    :cond_31
    :goto_31
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/l;

    return-object p0
.end method
