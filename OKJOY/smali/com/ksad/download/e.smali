.class public Lcom/ksad/download/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/download/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ksad/download/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ksad/download/e;
    .registers 1

    invoke-static {}, Lcom/ksad/download/e$a;->a()Lcom/ksad/download/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ksad/download/e;->a:Lcom/ksad/download/f;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/ksad/download/f;->a(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ksad/download/DownloadTask;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ksad/download/e;->a:Lcom/ksad/download/f;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/ksad/download/f;->a(Lcom/ksad/download/DownloadTask;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ksad/download/DownloadTask;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ksad/download/e;->a(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/ksad/download/e;->a:Lcom/ksad/download/f;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2}, Lcom/ksad/download/f;->a(Lcom/ksad/download/DownloadTask;Z)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_e

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/ksad/download/f;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/download/e;->a:Lcom/ksad/download/f;

    return-void
.end method

.method public declared-synchronized b(Lcom/ksad/download/DownloadTask;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ksad/download/e;->a(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/ksad/download/e;->a:Lcom/ksad/download/f;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lcom/ksad/download/f;->b(Lcom/ksad/download/DownloadTask;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_e

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
