.class Lcom/ss/android/socialbase/downloader/f/k$1;
.super Ljava/lang/Object;
.source "SegmentDispatcher.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/h/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/f/k;

.field private b:I


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/f/k;)V
    .registers 2

    .line 1308
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 13

    .line 1313
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/k;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/f/k;->b(Lcom/ss/android/socialbase/downloader/f/k;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_72

    .line 1316
    :cond_13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    monitor-enter v0

    .line 1317
    :try_start_16
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v3

    if-nez v3, :cond_6d

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/f/k;->d(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v3

    if-eqz v3, :cond_27

    goto :goto_6d

    .line 1321
    :cond_27
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/f/k;->e(Lcom/ss/android/socialbase/downloader/f/k;)J

    move-result-wide v10

    .line 1322
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-gtz v3, :cond_35

    .line 1323
    monitor-exit v0

    return-wide v1

    .line 1325
    :cond_35
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->b:I

    .line 1328
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    const/4 v5, 0x0

    .line 1329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1328
    move-wide v8, v10

    invoke-static/range {v4 .. v9}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/k;ZJJ)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object v1

    .line 1330
    if-eqz v1, :cond_6b

    .line 1332
    const-string v2, "SegmentDispatcher"

    const-string v3, "connectWatcher: switchUrl and reconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/k;Lcom/ss/android/socialbase/downloader/f/m;)Z

    .line 1337
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->f()V

    .line 1340
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->b:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/f/k;->f(Lcom/ss/android/socialbase/downloader/f/k;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    mul-long/2addr v1, v10

    monitor-exit v0

    return-wide v1

    .line 1343
    :cond_6b
    monitor-exit v0

    return-wide v10

    .line 1319
    :cond_6d
    :goto_6d
    monitor-exit v0

    return-wide v1

    .line 1344
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_16 .. :try_end_71} :catchall_6f

    throw v1

    .line 1314
    :cond_72
    :goto_72
    return-wide v1
.end method
