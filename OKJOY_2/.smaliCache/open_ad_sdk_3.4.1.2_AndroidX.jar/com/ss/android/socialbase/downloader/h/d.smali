.class public Lcom/ss/android/socialbase/downloader/h/d;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# instance fields
.field private volatile a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:I

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    .line 36
    return-void
.end method

.method private b()V
    .registers 6

    .line 99
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 101
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 102
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/h/c;

    .line 103
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/h/c;->d()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 108
    :cond_2d
    nop

    :goto_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_4e

    if-ge v1, v2, :cond_4d

    .line 110
    :try_start_34
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 111
    if-eqz v2, :cond_45

    .line 112
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 113
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_46

    .line 117
    :cond_45
    goto :goto_4a

    .line 115
    :catchall_46
    move-exception v2

    .line 116
    :try_start_47
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4e

    .line 108
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 121
    :cond_4d
    goto :goto_52

    .line 119
    :catchall_4e
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    :goto_52
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/h/c;)V
    .registers 5

    .line 184
    if-nez p1, :cond_3

    .line 185
    return-void

    .line 188
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->c()Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 192
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExecutorGroup()I

    move-result v1

    packed-switch v1, :pswitch_data_54

    goto :goto_28

    .line 197
    :pswitch_1f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->o()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_28

    .line 194
    :pswitch_24
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 201
    :cond_28
    :goto_28
    if-eqz v0, :cond_4e

    .line 202
    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_4e

    .line 203
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 204
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 205
    const-string v1, "pause_with_interrupt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_4e

    .line 207
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->g()Ljava/util/concurrent/Future;

    move-result-object p1

    .line 208
    if-eqz p1, :cond_4e

    .line 209
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_4f

    .line 216
    :cond_4e
    goto :goto_53

    .line 214
    :catch_4f
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x3
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 220
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 221
    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 224
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/h/c;

    .line 225
    if-eqz v3, :cond_2f

    .line 226
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v3

    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 230
    :cond_32
    monitor-exit v0

    return-object v1

    .line 231
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public a(IJ)V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/h/c;

    .line 236
    if-eqz p1, :cond_d

    .line 237
    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/h/c;->c(J)V

    .line 239
    :cond_d
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/h/c;)V
    .registers 9

    .line 39
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->f()V

    .line 40
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 41
    :try_start_6
    iget v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:I

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_14

    .line 42
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 43
    iput v4, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:I

    goto :goto_17

    .line 45
    :cond_14
    add-int/2addr v1, v3

    iput v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:I

    .line 47
    :goto_17
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_107

    .line 49
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->c()Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 52
    const/16 v1, 0x3eb

    :try_start_27
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 53
    if-eqz v0, :cond_72

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    if-eqz v5, :cond_72

    .line 55
    const-string v5, "mime_type_plg"

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 56
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v5

    const-string v6, "divide_plugin"

    invoke-virtual {v5, v6, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_5d

    .line 57
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    const-string v5, "executor_group"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_5d
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExecutorGroup()I

    move-result v3

    packed-switch v3, :pswitch_data_10a

    goto :goto_72

    .line 64
    :pswitch_69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->o()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    goto :goto_72

    .line 61
    :pswitch_6e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 70
    :cond_72
    :goto_72
    if-eqz v2, :cond_91

    .line 71
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    .line 72
    const-string v5, "pause_with_interrupt"

    invoke-virtual {v3, v5, v4}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v3

    .line 73
    if-eqz v3, :cond_8c

    .line 74
    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 75
    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/util/concurrent/Future;)V

    .line 76
    goto :goto_8f

    .line 77
    :cond_8c
    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    :goto_8f
    goto/16 :goto_105

    .line 80
    :cond_91
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v5, "execute failed cpu thread executor service is null"

    invoke-direct {v3, v1, v5}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    if-eqz v5, :cond_af

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v5

    goto :goto_b0

    :cond_af
    move v5, v4

    :goto_b0
    invoke-static {p1, v2, v3, v5}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_b3} :catch_db
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_b3} :catch_b4

    goto :goto_105

    .line 87
    :catch_b4
    move-exception p1

    .line 88
    if-eqz v0, :cond_d7

    .line 89
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v6, "execute OOM"

    invoke-direct {v5, v1, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_d4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    :cond_d4
    invoke-static {v2, v3, v5, v4}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 90
    :cond_d7
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_106

    .line 83
    :catch_db
    move-exception p1

    .line 84
    if-eqz v0, :cond_102

    .line 85
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v6, "DownloadThreadPoolExecute"

    invoke-static {p1, v6}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_ff

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    :cond_ff
    invoke-static {v2, v3, v5, v4}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 86
    :cond_102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :goto_105
    nop

    .line 94
    :goto_106
    return-void

    .line 48
    :catchall_107
    move-exception p1

    :try_start_108
    monitor-exit v0
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw p1

    :pswitch_data_10a
    .packed-switch 0x3
        :pswitch_6e
        :pswitch_69
    .end packed-switch
.end method

.method public a(I)Z
    .registers 5

    .line 149
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_11

    goto :goto_24

    .line 152
    :cond_11
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/h/c;

    .line 153
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->d()Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 v2, 0x1

    :cond_22
    monitor-exit v0

    return v2

    .line 151
    :cond_24
    :goto_24
    monitor-exit v0

    return v2

    .line 154
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/h/c;
    .registers 5

    .line 158
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 159
    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 160
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/h/c;

    .line 161
    if-eqz v1, :cond_1d

    .line 162
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/h/c;->b()V

    .line 163
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/h/d;->c(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 164
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 165
    monitor-exit v0

    return-object v1

    .line 167
    :cond_1d
    monitor-exit v0

    .line 168
    const/4 p1, 0x0

    return-object p1

    .line 167
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/h/c;)V
    .registers 4

    .line 126
    if-nez p1, :cond_3

    .line 127
    return-void

    .line 129
    :cond_3
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 131
    const/high16 v1, 0x80000

    :try_start_8
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 134
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    .line 135
    if-ltz p1, :cond_1b

    .line 136
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 138
    :cond_1b
    goto :goto_25

    .line 140
    :cond_1c
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_26

    .line 144
    :goto_25
    goto :goto_2a

    .line 142
    :catchall_26
    move-exception p1

    .line 143
    :try_start_27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :goto_2a
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public c(I)V
    .registers 4

    .line 172
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 173
    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 174
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/h/c;

    .line 175
    if-eqz v1, :cond_1b

    .line 176
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/h/c;->a()V

    .line 177
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/h/d;->c(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 178
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 180
    :cond_1b
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method
