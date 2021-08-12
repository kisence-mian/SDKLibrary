.class Lcom/ss/android/socialbase/downloader/impls/a$1;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/a;->a(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic c:Landroid/util/SparseArray;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/impls/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/a;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/util/SparseArray;)V
    .registers 5

    .line 363
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->d:Lcom/ss/android/socialbase/downloader/impls/a;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 367
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 368
    monitor-enter v0

    .line 369
    move v2, v1

    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 370
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 371
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    .line 372
    if-eqz v3, :cond_24

    .line 373
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v3, v4}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 369
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 375
    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1

    .line 378
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_61

    .line 379
    monitor-enter v0

    .line 380
    nop

    :goto_3c
    :try_start_3c
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 381
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 382
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    .line 383
    if-eqz v2, :cond_59

    .line 384
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 380
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 386
    :cond_5c
    monitor-exit v0

    goto :goto_61

    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3c .. :try_end_60} :catchall_5e

    throw v1

    .line 388
    :cond_61
    :goto_61
    return-void
.end method
