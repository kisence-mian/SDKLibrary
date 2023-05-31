.class public Lcom/ss/android/socialbase/downloader/l/d;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# instance fields
.field private volatile a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/l/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->b:I

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    .line 33
    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 79
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 80
    :goto_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2e

    .line 81
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/c;

    .line 83
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c;->d()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 88
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_31} :catch_4e

    move-result v0

    if-ge v1, v0, :cond_52

    .line 90
    :try_start_34
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    if-eqz v0, :cond_45

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_45} :catch_49

    .line 88
    :cond_45
    :goto_45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 95
    :catch_49
    move-exception v0

    .line 96
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_45

    .line 99
    :catch_4e
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    :cond_52
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/l/c;)V
    .registers 5

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_2c

    .line 167
    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_2c

    .line 168
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 169
    if-eqz p1, :cond_2c

    .line 170
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/l/c;->e()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 171
    const-string v1, "pause_with_interrupt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 172
    if-eqz v0, :cond_2c

    .line 173
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/l/c;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2c

    .line 175
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 184
    :cond_2c
    :goto_2c
    return-void

    .line 181
    :catch_2d
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const-class v2, Lcom/ss/android/socialbase/downloader/l/d;

    monitor-enter v2

    .line 188
    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/d;->b()V

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/c;

    .line 192
    if-eqz v0, :cond_30

    .line 193
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c;->e()I

    move-result v0

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 197
    :cond_34
    monitor-exit v2

    return-object v3

    .line 198
    :catchall_36
    move-exception v0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/l/c;)V
    .registers 10

    .prologue
    const/16 v7, 0x3eb

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/l/c;->f()V

    .line 37
    const-class v1, Lcom/ss/android/socialbase/downloader/l/d;

    monitor-enter v1

    .line 38
    :try_start_9
    iget v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->b:I

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_42

    .line 39
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/d;->b()V

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->b:I

    .line 44
    :goto_15
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/l/c;->e()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_49

    .line 46
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/l/c;->c()Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 49
    :try_start_23
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_7b

    .line 51
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/l/c;->e()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v3

    .line 52
    const-string v4, "pause_with_interrupt"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v3

    .line 53
    if-eqz v3, :cond_4c

    .line 54
    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/l/c;->a(Ljava/util/concurrent/Future;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_41} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_41} :catch_9e

    .line 74
    :goto_41
    return-void

    .line 42
    :cond_42
    :try_start_42
    iget v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->b:I

    goto :goto_15

    .line 45
    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_49

    throw v0

    .line 57
    :cond_4c
    :try_start_4c
    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4c .. :try_end_4f} :catch_9e

    goto :goto_41

    .line 63
    :catch_50
    move-exception v1

    .line 64
    if-eqz v2, :cond_77

    .line 65
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    new-instance v5, Lcom/ss/android/socialbase/downloader/e/a;

    const-string v6, "DownloadThreadPoolExecute"

    invoke-static {v1, v6}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    :cond_74
    invoke-static {v3, v4, v5, v0}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 66
    :cond_77
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 60
    :cond_7b
    :try_start_7b
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    new-instance v5, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3eb

    const-string v6, "execute failed cpu thread executor service is null"

    invoke-direct {v5, v1, v6}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    if-eqz v1, :cond_c6

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    :goto_9a
    invoke-static {v3, v4, v5, v1}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_9d} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7b .. :try_end_9d} :catch_9e

    goto :goto_41

    .line 67
    :catch_9e
    move-exception v1

    .line 68
    if-eqz v2, :cond_c1

    .line 69
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    new-instance v5, Lcom/ss/android/socialbase/downloader/e/a;

    const-string v6, "execute OOM"

    invoke-direct {v5, v7, v6}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v6

    if-eqz v6, :cond_be

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    :cond_be
    invoke-static {v3, v4, v5, v0}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 70
    :cond_c1
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_41

    :cond_c6
    move v1, v0

    .line 60
    goto :goto_9a
.end method

.method public a(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 129
    const-class v2, Lcom/ss/android/socialbase/downloader/l/d;

    monitor-enter v2

    .line 130
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_13

    .line 131
    :cond_10
    monitor-exit v2

    move v0, v1

    .line 133
    :goto_12
    return v0

    .line 132
    :cond_13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/c;

    .line 133
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c;->d()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_24
    monitor-exit v2

    goto :goto_12

    .line 134
    :catchall_26
    move-exception v0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    move v0, v1

    .line 133
    goto :goto_24
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/l/c;
    .registers 5

    .prologue
    .line 138
    const-class v1, Lcom/ss/android/socialbase/downloader/l/d;

    monitor-enter v1

    .line 139
    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/d;->b()V

    .line 140
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/c;

    .line 141
    if-eqz v0, :cond_1d

    .line 142
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c;->b()V

    .line 143
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/l/d;->c(Lcom/ss/android/socialbase/downloader/l/c;)V

    .line 144
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 145
    monitor-exit v1

    .line 148
    :goto_1c
    return-object v0

    .line 147
    :cond_1d
    monitor-exit v1

    .line 148
    const/4 v0, 0x0

    goto :goto_1c

    .line 147
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/l/c;)V
    .registers 5

    .prologue
    .line 106
    if-nez p1, :cond_3

    .line 126
    :goto_2
    return-void

    .line 109
    :cond_3
    const-class v1, Lcom/ss/android/socialbase/downloader/l/d;

    monitor-enter v1

    .line 111
    const/high16 v0, 0x80000

    :try_start_8
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 114
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 115
    if-ltz v0, :cond_1b

    .line 116
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_2a
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1d

    .line 125
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit v1

    goto :goto_2

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 120
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/l/c;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_2a
    .catchall {:try_start_20 .. :try_end_29} :catchall_1d

    goto :goto_1b

    .line 122
    :catch_2a
    move-exception v0

    .line 123
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_1d

    goto :goto_1b
.end method

.method public c(I)V
    .registers 4

    .prologue
    .line 152
    const-class v1, Lcom/ss/android/socialbase/downloader/l/d;

    monitor-enter v1

    .line 153
    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/l/d;->b()V

    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/l/c;

    .line 155
    if-eqz v0, :cond_1b

    .line 156
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/c;->a()V

    .line 157
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/l/d;->c(Lcom/ss/android/socialbase/downloader/l/c;)V

    .line 158
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 160
    :cond_1b
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method
