.class public Lcom/ss/android/socialbase/downloader/impls/k;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 216
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 217
    if-eqz p1, :cond_9

    .line 218
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V

    .line 219
    :cond_9
    return-object p1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 272
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 273
    if-eqz p1, :cond_2d

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 275
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_2d

    .line 276
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x2

    if-eq p2, p3, :cond_2d

    .line 277
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isFailedStatus(I)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 278
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x4

    if-eq p2, p3, :cond_2d

    .line 279
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 282
    :cond_2d
    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 6

    .line 259
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 260
    if-eqz p1, :cond_23

    .line 261
    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 262
    invoke-virtual {p1, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->seteTag(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 264
    invoke-virtual {p1, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setName(Ljava/lang/String;)V

    .line 265
    :cond_1f
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 267
    :cond_23
    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 73
    :try_start_8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 74
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2b

    .line 75
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 76
    if-eqz p1, :cond_28

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 77
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_2e
    .catchall {:try_start_8 .. :try_end_28} :catchall_2c

    .line 74
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 82
    :cond_2b
    goto :goto_32

    .line 83
    :catchall_2c
    move-exception p1

    goto :goto_34

    .line 80
    :catch_2e
    move-exception p1

    .line 81
    :try_start_2f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_32
    monitor-exit v1

    .line 84
    return-object v0

    .line 83
    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    throw p1
.end method

.method public a(IIII)V
    .registers 5

    .line 212
    return-void
.end method

.method public a(IIIJ)V
    .registers 8

    .line 192
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p1

    .line 193
    if-nez p1, :cond_7

    .line 194
    return-void

    .line 195
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 196
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v1

    if-ne v1, p3, :cond_4e

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 197
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2c

    .line 198
    goto :goto_4f

    .line 199
    :cond_2c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 200
    if-eqz p3, :cond_4c

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v0

    if-ne v0, p2, :cond_4c

    .line 201
    invoke-virtual {p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/b;->b(J)V

    .line 202
    goto :goto_4d

    .line 204
    :cond_4c
    goto :goto_34

    .line 205
    :cond_4d
    :goto_4d
    goto :goto_4f

    .line 207
    :cond_4e
    goto :goto_b

    .line 208
    :cond_4f
    :goto_4f
    return-void
.end method

.method public a(IIJ)V
    .registers 7

    .line 179
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p1

    .line 180
    if-nez p1, :cond_7

    .line 181
    return-void

    .line 182
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 183
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 184
    invoke-virtual {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/model/b;->b(J)V

    .line 185
    goto :goto_24

    .line 187
    :cond_23
    goto :goto_b

    .line 188
    :cond_24
    :goto_24
    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 371
    if-nez p2, :cond_3

    .line 372
    return-void

    .line 373
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 374
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/b;

    .line 375
    if-nez p2, :cond_19

    .line 376
    goto :goto_a

    .line 377
    :cond_19
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 378
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 379
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 380
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 381
    goto :goto_2a

    .line 383
    :cond_3a
    goto :goto_a

    .line 384
    :cond_3b
    return-void
.end method

.method public declared-synchronized a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 5

    monitor-enter p0

    .line 163
    :try_start_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 165
    if-nez v1, :cond_19

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    :cond_19
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 170
    monitor-exit p0

    return-void

    .line 162
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ILjava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 6

    .line 224
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 225
    return v0

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 227
    :try_start_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 228
    :goto_15
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    monitor-exit v1

    return v0

    .line 230
    :catchall_20
    move-exception p1

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 58
    nop

    .line 60
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_f
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    .line 63
    goto :goto_14

    .line 65
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 61
    :catch_f
    move-exception p1

    .line 62
    :try_start_10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 64
    :goto_14
    monitor-exit v0

    return-object p1

    .line 65
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    throw p1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 287
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 288
    if-eqz p1, :cond_11

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 290
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 291
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 293
    :cond_11
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 90
    return-object v1

    .line 92
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 93
    :try_start_b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 94
    monitor-exit v0

    return-object v1

    .line 96
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const/4 v2, 0x0

    :goto_1b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 98
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 99
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 100
    if-eqz v3, :cond_54

    .line 101
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 102
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 103
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isFailedStatus(I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 106
    :cond_57
    monitor-exit v0

    return-object v1

    .line 107
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public b()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 253
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public b(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 389
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 2

    .line 366
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 367
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 2

    .line 175
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 308
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 309
    if-eqz p1, :cond_14

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 311
    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 312
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 313
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSuccess(Z)V

    .line 315
    :cond_14
    return-object p1
.end method

.method public c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 114
    return-object v1

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 116
    :try_start_b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 117
    monitor-exit v0

    return-object v1

    .line 118
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    const/4 v2, 0x0

    :goto_1b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 120
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 121
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 122
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 123
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 124
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_51

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 127
    :cond_54
    monitor-exit v0

    return-object v1

    .line 128
    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_56

    throw p1
.end method

.method public c()Z
    .registers 2

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 320
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 321
    if-eqz p1, :cond_e

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 323
    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 325
    :cond_e
    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 134
    return-object v1

    .line 135
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 136
    :try_start_b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 137
    monitor-exit v0

    return-object v1

    .line 138
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    const/4 v2, 0x0

    :goto_1b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 140
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 141
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 142
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 143
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 144
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isUnCompletedStatus(I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 145
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 147
    :cond_57
    monitor-exit v0

    return-object v1

    .line 148
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public declared-synchronized d(I)V
    .registers 3

    monitor-enter p0

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Z
    .registers 2

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method public e(I)Z
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 236
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 237
    monitor-exit v0

    .line 238
    const/4 p1, 0x1

    return p1

    .line 237
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public f(I)Z
    .registers 2

    .line 243
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->e(I)Z

    .line 244
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->m(I)V

    .line 246
    const/4 p1, 0x1

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 39
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 40
    if-eqz p1, :cond_a

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 42
    :cond_a
    return-object p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 298
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 299
    if-eqz p1, :cond_e

    .line 300
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 303
    :cond_e
    return-object p1
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 340
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 341
    if-eqz p1, :cond_a

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 343
    :cond_a
    return-object p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 348
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 349
    if-eqz p1, :cond_a

    .line 350
    const/4 v0, -0x7

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 351
    :cond_a
    return-object p1
.end method

.method public l(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public m(I)V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 414
    return-void
.end method

.method public n(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 394
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1b

    .line 397
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 395
    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return-object p1
.end method
