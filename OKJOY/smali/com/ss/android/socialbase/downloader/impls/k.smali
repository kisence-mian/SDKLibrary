.class public Lcom/ss/android/socialbase/downloader/impls/k;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/k;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public a(II)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_9

    .line 216
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/g/c;->c(I)V

    .line 217
    :cond_9
    return-object v0
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_2d

    .line 271
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(JZ)V

    .line 272
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2d

    .line 273
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2d

    .line 274
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->g(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 275
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    const/4 v2, -0x4

    if-eq v1, v2, :cond_2d

    .line 276
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 279
    :cond_2d
    return-object v0
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_23

    .line 258
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/g/c;->c(J)V

    .line 259
    invoke-virtual {v0, p4}, Lcom/ss/android/socialbase/downloader/g/c;->b(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 261
    invoke-virtual {v0, p5}, Lcom/ss/android/socialbase/downloader/g/c;->c(Ljava/lang/String;)V

    .line 262
    :cond_1f
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 264
    :cond_23
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 71
    :try_start_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_31

    .line 73
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 74
    if-eqz p1, :cond_29

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 75
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2d
    .catchall {:try_start_8 .. :try_end_29} :catchall_33

    .line 72
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 78
    :catch_2d
    move-exception v0

    .line 79
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :cond_31
    monitor-exit v3

    .line 82
    return-object v2

    .line 81
    :catchall_33
    move-exception v0

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_33

    throw v0
.end method

.method public a(IIII)V
    .registers 5

    .prologue
    .line 210
    return-void
.end method

.method public a(IIIJ)V
    .registers 10

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object v0

    .line 191
    if-nez v0, :cond_7

    .line 206
    :cond_6
    :goto_6
    return-void

    .line 193
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 194
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    if-ne v2, p3, :cond_b

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v2

    if-nez v2, :cond_b

    .line 195
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 197
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 198
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    if-ne v2, p2, :cond_33

    .line 199
    invoke-virtual {v0, p4, p5}, Lcom/ss/android/socialbase/downloader/g/b;->b(J)V

    goto :goto_6
.end method

.method public a(IIJ)V
    .registers 8

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object v0

    .line 178
    if-nez v0, :cond_7

    .line 186
    :cond_6
    :goto_6
    return-void

    .line 180
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 181
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    if-ne v2, p2, :cond_b

    .line 182
    invoke-virtual {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/g/b;->b(J)V

    goto :goto_6
.end method

.method public a(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    if-nez p2, :cond_3

    .line 381
    :cond_2
    return-void

    .line 370
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 371
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 372
    if-eqz v0, :cond_a

    .line 374
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 375
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 376
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 377
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_29
.end method

.method public declared-synchronized a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 5

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    if-nez v0, :cond_19

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    :cond_19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 168
    monitor-exit p0

    return-void

    .line 161
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 222
    if-nez p1, :cond_4

    .line 227
    :goto_3
    return v0

    .line 224
    :cond_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 225
    :try_start_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 226
    :goto_13
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    monitor-exit v1

    goto :goto_3

    .line 228
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0

    .line 225
    :cond_21
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 5

    .prologue
    .line 55
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v2

    .line 56
    const/4 v1, 0x0

    .line 58
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_e
    .catchall {:try_start_4 .. :try_end_c} :catchall_14

    .line 62
    :goto_c
    :try_start_c
    monitor-exit v2

    return-object v0

    .line 59
    :catch_e
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_c

    .line 63
    :catchall_14
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_11

    .line 286
    invoke-virtual {v0, p2, p3, v2}, Lcom/ss/android/socialbase/downloader/g/c;->a(JZ)V

    .line 287
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 288
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 290
    :cond_11
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    :goto_7
    return-object v0

    .line 90
    :cond_8
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 91
    :try_start_b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 92
    monitor-exit v3

    goto :goto_7

    .line 105
    :catchall_15
    move-exception v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0

    .line 94
    :cond_18
    :try_start_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v0, 0x0

    move v2, v0

    :goto_1f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    .line 96
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 97
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 98
    if-eqz v0, :cond_58

    .line 99
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 100
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 101
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/b/f;->g(I)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_58
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f

    .line 104
    :cond_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_18 .. :try_end_5d} :catchall_15

    move-object v0, v1

    goto :goto_7
.end method

.method public b()V
    .registers 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 249
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 250
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 251
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 2

    .prologue
    .line 173
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 2

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 364
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_14

    .line 307
    invoke-virtual {v0, p2, p3, v2}, Lcom/ss/android/socialbase/downloader/g/c;->a(JZ)V

    .line 308
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 309
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 310
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->g(Z)V

    .line 312
    :cond_14
    return-object v0
.end method

.method public c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    :goto_7
    return-object v0

    .line 113
    :cond_8
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 114
    :try_start_b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 115
    monitor-exit v3

    goto :goto_7

    .line 126
    :catchall_15
    move-exception v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0

    .line 116
    :cond_18
    :try_start_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v0, 0x0

    move v2, v0

    :goto_1f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_59

    .line 118
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 119
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 120
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 121
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 122
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_55

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_55
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f

    .line 125
    :cond_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_15

    move-object v0, v1

    goto :goto_7
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_e

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(JZ)V

    .line 320
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 322
    :cond_e
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    :goto_7
    return-object v0

    .line 133
    :cond_8
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 134
    :try_start_b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 135
    monitor-exit v3

    goto :goto_7

    .line 146
    :catchall_15
    move-exception v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0

    .line 136
    :cond_18
    :try_start_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const/4 v0, 0x0

    move v2, v0

    :goto_1f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    .line 138
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 139
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 140
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 141
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 142
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/b/f;->f(I)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 143
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_58
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f

    .line 145
    :cond_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_18 .. :try_end_5d} :catchall_15

    move-object v0, v1

    goto :goto_7
.end method

.method public declared-synchronized d(I)V
    .registers 3

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method public e(I)Z
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 234
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 235
    monitor-exit v1

    .line 236
    const/4 v0, 0x1

    return v0

    .line 235
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public f(I)Z
    .registers 3

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->e(I)Z

    .line 242
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_a

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 40
    :cond_a
    return-object v0
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_e

    .line 297
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 300
    :cond_e
    return-object v0
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_a

    .line 339
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 340
    :cond_a
    return-object v0
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_a

    .line 347
    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 348
    :cond_a
    return-object v0
.end method
