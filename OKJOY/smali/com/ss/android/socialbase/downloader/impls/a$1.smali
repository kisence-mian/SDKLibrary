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

.field final synthetic b:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic c:Landroid/util/SparseArray;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/impls/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/a;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/g/c;Landroid/util/SparseArray;)V
    .registers 5

    .prologue
    .line 361
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->d:Lcom/ss/android/socialbase/downloader/impls/a;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/g/c;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_2b

    .line 366
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    monitor-enter v3

    move v2, v1

    .line 367
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2a

    .line 368
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 369
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;

    .line 370
    if-eqz v0, :cond_26

    .line 371
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v4}, Lcom/ss/android/socialbase/downloader/d/w;->f(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 367
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 373
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_5f

    .line 376
    :cond_2b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_63

    .line 377
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    monitor-enter v2

    .line 378
    :goto_3e
    :try_start_3e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_62

    .line 379
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 380
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;

    .line 381
    if-eqz v0, :cond_5b

    .line 382
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a$1;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/d/w;->f(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5b
    .catchall {:try_start_3e .. :try_end_5b} :catchall_64

    .line 378
    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    .line 373
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0

    .line 384
    :cond_62
    :try_start_62
    monitor-exit v2

    .line 386
    :cond_63
    return-void

    .line 384
    :catchall_64
    move-exception v0

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_64

    throw v0
.end method
