.class Lcom/ss/android/socialbase/downloader/impls/r$2;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/r;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/ss/android/socialbase/downloader/impls/r;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V
    .registers 4

    .prologue
    .line 279
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->a:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 283
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->c(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v1

    if-gtz v1, :cond_a

    .line 316
    :cond_9
    :goto_9
    return-void

    .line 287
    :cond_a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->d(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v5

    .line 288
    if-eqz v5, :cond_9

    .line 291
    const-string v1, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScheduleAllTaskRetry: mWaitingRetryTasksCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/r;->c(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 293
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v8

    monitor-enter v8
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_91

    .line 295
    :goto_40
    :try_start_40
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 296
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 297
    if-eqz v1, :cond_6e

    iget v4, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->a:I

    iget-boolean v6, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(JIIZ)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 299
    iget-boolean v4, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    if-eqz v4, :cond_6b

    .line 300
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->c()V

    .line 302
    :cond_6b
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 305
    :cond_71
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_40 .. :try_end_72} :catchall_94

    .line 308
    :try_start_72
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 309
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 310
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    iget v0, v0, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v5, v3}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;IIZ)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_90} :catch_91

    goto :goto_7c

    .line 314
    :catch_91
    move-exception v0

    goto/16 :goto_9

    .line 305
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v8
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_97} :catch_91
.end method
