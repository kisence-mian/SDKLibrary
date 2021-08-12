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

    .line 318
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->a:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->c(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v0

    if-gtz v0, :cond_9

    .line 324
    return-void

    .line 326
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->d(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v0

    .line 327
    if-nez v0, :cond_12

    .line 328
    return-void

    .line 330
    :cond_12
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

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 332
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 333
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v10

    monitor-enter v10
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_9a

    .line 334
    const/4 v11, 0x0

    move v12, v11

    :goto_42
    :try_start_42
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_77

    .line 335
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 336
    if-eqz v13, :cond_74

    iget v4, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->a:I

    iget-boolean v6, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    move-object v1, v13

    move-wide v2, v7

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(JIIZ)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 338
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    if-eqz v1, :cond_71

    .line 339
    invoke-virtual {v13}, Lcom/ss/android/socialbase/downloader/impls/r$a;->c()V

    .line 341
    :cond_71
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_74
    add-int/lit8 v12, v12, 0x1

    goto :goto_42

    .line 344
    :cond_77
    monitor-exit v10
    :try_end_78
    .catchall {:try_start_42 .. :try_end_78} :catchall_97

    .line 347
    :try_start_78
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_96

    .line 348
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 349
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    iget v2, v2, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-static {v3, v2, v0, v11}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;IIZ)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_95} :catch_9a

    .line 350
    goto :goto_82

    .line 354
    :cond_96
    goto :goto_9b

    .line 344
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit v10
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw v0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9a

    .line 353
    :catch_9a
    move-exception v0

    .line 355
    :goto_9b
    return-void
.end method
