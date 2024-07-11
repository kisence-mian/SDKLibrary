.class public Lcom/ss/android/socialbase/downloader/downloader/c;
.super Ljava/lang/Object;
.source "DownloadProcessDispatcher.java"


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/downloader/c;


# instance fields
.field private volatile b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/downloader/c;
    .registers 2

    .line 44
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    if-nez v0, :cond_13

    .line 45
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    .line 46
    :try_start_7
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/c;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/c;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    .line 47
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 49
    :cond_13
    :goto_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    if-eqz p1, :cond_2b

    .line 368
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 369
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 370
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    :cond_2a
    goto :goto_b

    .line 375
    :cond_2b
    if-eqz p2, :cond_51

    .line 376
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 377
    if-eqz p2, :cond_50

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_50

    .line 378
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p3, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    :cond_50
    goto :goto_31

    .line 383
    :cond_51
    const/4 p1, 0x0

    :goto_52
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_68

    .line 384
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 385
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 386
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 p1, p1, 0x1

    goto :goto_52

    .line 388
    :cond_68
    return-object v0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/l;
    .registers 8

    .line 138
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 139
    return-object v0

    .line 140
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 141
    if-nez v1, :cond_b

    .line 142
    return-object v0

    .line 143
    :cond_b
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedIndependentProcess()Z

    move-result v0

    .line 144
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 145
    :cond_1c
    move v0, v3

    .line 147
    :cond_1d
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v2

    .line 148
    const/4 v4, 0x0

    if-ltz v2, :cond_b5

    if-eq v2, v0, :cond_b5

    .line 150
    if-ne v2, v3, :cond_76

    .line 151
    :try_start_2c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 152
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(I)V

    .line 153
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 154
    if-eqz p1, :cond_52

    .line 155
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 157
    :cond_52
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p1

    if-le p1, v3, :cond_75

    .line 158
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->i(I)Ljava/util/List;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_75

    .line 160
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v2, v5, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILjava/util/List;)V

    .line 164
    :cond_75
    goto :goto_b3

    .line 166
    :cond_76
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 167
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(I)V

    .line 168
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->i(I)Ljava/util/List;

    move-result-object p1

    .line 169
    if-eqz p1, :cond_a4

    .line 170
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v2, v5, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILjava/util/List;)V

    .line 173
    :cond_a4
    goto :goto_b3

    .line 174
    :cond_a5
    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setNeedDelayForCacheSync(Z)V

    .line 175
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(II)V
    :try_end_b3
    .catchall {:try_start_2c .. :try_end_b3} :catchall_b4

    .line 179
    :cond_b3
    :goto_b3
    goto :goto_b5

    .line 178
    :catchall_b4
    move-exception p1

    .line 182
    :cond_b5
    :goto_b5
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    if-ne v0, v3, :cond_bd

    move v1, v3

    goto :goto_be

    :cond_bd
    move v1, v4

    :goto_be
    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    .line 183
    if-ne v0, v3, :cond_c4

    goto :goto_c5

    :cond_c4
    move v3, v4

    :goto_c5
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .line 121
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->g()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 122
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->m(I)I

    move-result p1

    return p1

    .line 124
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 300
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 313
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 314
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 315
    if-nez v0, :cond_18

    if-nez p1, :cond_18

    .line 316
    const/4 p1, 0x0

    return-object p1

    .line 318
    :cond_18
    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    return-object v1

    .line 323
    :cond_25
    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move-object v0, p1

    :goto_29
    return-object v0
.end method

.method public a(IJ)V
    .registers 5

    .line 584
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 585
    if-nez v0, :cond_7

    .line 586
    return-void

    .line 589
    :cond_7
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IJ)V

    .line 590
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 11

    .line 447
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 448
    if-nez v0, :cond_7

    .line 449
    return-void

    .line 450
    :cond_7
    if-nez p2, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_f
    move v2, v1

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V

    .line 451
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V
    .registers 13

    .line 462
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 463
    if-nez v0, :cond_7

    .line 464
    return-void

    .line 465
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V

    .line 466
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 4

    .line 341
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 342
    if-nez v0, :cond_7

    .line 343
    return-void

    .line 344
    :cond_7
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILcom/ss/android/socialbase/downloader/depend/ab;)V

    .line 345
    return-void
.end method

.method public a(IZ)V
    .registers 5

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(IZ)V

    .line 101
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->g()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 102
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(IZ)V

    .line 104
    :cond_1b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->c()Z

    move-result p2

    if-nez p2, :cond_4e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result p2

    if-nez p2, :cond_4e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result p2

    if-nez p2, :cond_4e

    .line 106
    :try_start_2d
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v0, "com.ss.android.downloader.action.PROCESS_NOTIFY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v0, "extra_download_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_4a

    .line 112
    goto :goto_4e

    .line 110
    :catchall_4a
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :cond_4e
    :goto_4e
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/ae;)V
    .registers 4

    .line 61
    if-nez p1, :cond_3

    .line 62
    return-void

    .line 63
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/ae;->a()V

    .line 65
    return-void

    .line 67
    :cond_d
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 68
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/ae;->a()V

    .line 70
    :cond_1b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    monitor-enter v0

    .line 71
    :try_start_1e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 72
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2b
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .registers 2

    .line 562
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/depend/k;)V

    .line 563
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 7

    .line 514
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 515
    if-nez v0, :cond_2d

    .line 516
    if-eqz p1, :cond_2c

    .line 517
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "tryDownload but getDownloadHandler failed"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 518
    :cond_2c
    return-void

    .line 521
    :cond_2d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->isNeedDelayForCacheSync()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 522
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/c$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/c;Lcom/ss/android/socialbase/downloader/downloader/l;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43

    .line 529
    :cond_40
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 532
    :goto_43
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_a

    .line 412
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/util/List;)V

    .line 413
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_14

    .line 415
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/util/List;)V

    .line 416
    :cond_14
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 4

    .line 469
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 470
    return v0

    .line 471
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 472
    if-nez v1, :cond_f

    .line 473
    return v0

    .line 474
    :cond_f
    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized b(I)I
    .registers 3

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    if-nez v0, :cond_c

    .line 129
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 130
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1a

    monitor-exit p0

    return p1

    .line 127
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 306
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p2

    .line 307
    if-nez p2, :cond_c

    .line 308
    const/4 p1, 0x0

    return-object p1

    .line 309
    :cond_c
    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 350
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 352
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 353
    nop

    .line 354
    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 355
    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_14

    .line 354
    :cond_13
    move-object v1, v2

    .line 357
    :goto_14
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v3

    .line 358
    nop

    .line 359
    if-eqz v3, :cond_20

    .line 360
    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 362
    :cond_20
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/ae;

    .line 92
    if-eqz v2, :cond_1a

    .line 93
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/ae;->a()V

    .line 95
    :cond_1a
    goto :goto_9

    .line 96
    :cond_1b
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public b(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 11

    .line 455
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 456
    if-nez v0, :cond_7

    .line 457
    return-void

    .line 458
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V

    .line 459
    return-void
.end method

.method public declared-synchronized b(IZ)V
    .registers 4

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    if-eqz p2, :cond_8

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_8
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 118
    monitor-exit p0

    return-void

    .line 116
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/depend/ae;)V
    .registers 4

    .line 78
    if-nez p1, :cond_3

    .line 79
    return-void

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    monitor-enter v0

    .line 81
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 82
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_13
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .registers 2

    .line 566
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Lcom/ss/android/socialbase/downloader/depend/k;)V

    .line 567
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_a

    .line 421
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/util/List;)V

    .line 423
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_14

    .line 425
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/util/List;)V

    .line 427
    :cond_14
    return-void
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/downloader/l;
    .registers 3

    .line 134
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 393
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 395
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 396
    nop

    .line 397
    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 398
    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_14

    .line 397
    :cond_13
    move-object v1, v2

    .line 400
    :goto_14
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v3

    .line 401
    nop

    .line 402
    if-eqz v3, :cond_20

    .line 403
    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 405
    :cond_20
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 2

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_a

    .line 261
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->a()V

    .line 262
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_14

    .line 264
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->a()V

    .line 265
    :cond_14
    return-void
.end method

.method public c(IZ)V
    .registers 6

    .line 196
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 197
    const/high16 v0, 0x800000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    .line 198
    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 204
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_19

    .line 206
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IZ)V

    .line 209
    :cond_19
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_22

    .line 211
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IZ)V

    .line 213
    :cond_22
    goto :goto_35

    .line 214
    :cond_23
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_2c

    .line 216
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IZ)V

    .line 219
    :cond_2c
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_35

    .line 221
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IZ)V

    .line 224
    :cond_35
    :goto_35
    goto :goto_47

    .line 225
    :cond_36
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_3f

    .line 227
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IZ)V

    .line 229
    :cond_3f
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(II)V

    .line 231
    :goto_47
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 482
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 484
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 485
    nop

    .line 486
    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 487
    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_14

    .line 486
    :cond_13
    move-object v1, v2

    .line 489
    :goto_14
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v3

    .line 490
    nop

    .line 491
    if-eqz v3, :cond_20

    .line 492
    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 494
    :cond_20
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .registers 3

    .line 188
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 189
    if-nez v0, :cond_7

    .line 190
    return-void

    .line 191
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(I)V

    .line 192
    return-void
.end method

.method public d(IZ)V
    .registers 4

    .line 431
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 432
    if-nez v0, :cond_7

    .line 433
    return-void

    .line 434
    :cond_7
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(IZ)V

    .line 435
    return-void
.end method

.method public d()Z
    .registers 2

    .line 478
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->M()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 498
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 500
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 501
    nop

    .line 502
    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 503
    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_14

    .line 502
    :cond_13
    move-object v1, v2

    .line 505
    :goto_14
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v3

    .line 506
    nop

    .line 507
    if-eqz v3, :cond_20

    .line 508
    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 510
    :cond_20
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .registers 3

    .line 570
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 571
    if-eqz v1, :cond_c

    .line 572
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->e()Z

    move-result v0

    return v0

    .line 573
    :cond_c
    return v0
.end method

.method public e(I)Z
    .registers 3

    .line 235
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 236
    if-nez v0, :cond_8

    .line 237
    const/4 p1, 0x0

    return p1

    .line 238
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(I)Z

    move-result p1

    return p1
.end method

.method public f(I)V
    .registers 3

    .line 243
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 244
    if-nez v0, :cond_7

    .line 245
    return-void

    .line 246
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(I)V

    .line 247
    return-void
.end method

.method public g(I)V
    .registers 3

    .line 251
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 252
    if-nez v0, :cond_7

    .line 253
    return-void

    .line 254
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d(I)V

    .line 255
    return-void
.end method

.method public h(I)J
    .registers 4

    .line 269
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 270
    if-nez v0, :cond_9

    .line 271
    const-wide/16 v0, 0x0

    return-wide v0

    .line 272
    :cond_9
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(I)I
    .registers 3

    .line 277
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 278
    if-nez v0, :cond_8

    .line 279
    const/4 p1, 0x0

    return p1

    .line 280
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->f(I)I

    move-result p1

    return p1
.end method

.method public j(I)Z
    .registers 3

    .line 285
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 286
    if-nez v0, :cond_8

    .line 287
    const/4 p1, 0x0

    return p1

    .line 288
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->g(I)Z

    move-result p1

    return p1
.end method

.method public k(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 293
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 294
    if-nez v0, :cond_8

    .line 295
    const/4 p1, 0x0

    return-object p1

    .line 296
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public l(I)Lcom/ss/android/socialbase/downloader/depend/ab;
    .registers 3

    .line 327
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 328
    if-nez v0, :cond_8

    .line 329
    const/4 p1, 0x0

    return-object p1

    .line 330
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->q(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1

    return-object p1
.end method

.method public m(I)Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 3

    .line 334
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 335
    if-nez v0, :cond_8

    .line 336
    const/4 p1, 0x0

    return-object p1

    .line 337
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->r(I)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1

    return-object p1
.end method

.method public n(I)V
    .registers 3

    .line 439
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 440
    if-nez v0, :cond_7

    .line 441
    return-void

    .line 442
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->j(I)V

    .line 443
    return-void
.end method

.method public o(I)Z
    .registers 3

    .line 535
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 536
    if-nez v0, :cond_8

    .line 537
    const/4 p1, 0x0

    return p1

    .line 538
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->l(I)Z

    move-result p1

    return p1
.end method

.method public p(I)V
    .registers 3

    .line 542
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_a

    .line 544
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->k(I)V

    .line 546
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_14

    .line 548
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->k(I)V

    .line 549
    :cond_14
    return-void
.end method

.method public q(I)V
    .registers 3

    .line 552
    if-nez p1, :cond_3

    .line 553
    return-void

    .line 554
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(IZ)V

    .line 555
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p1

    .line 556
    if-nez p1, :cond_14

    .line 557
    return-void

    .line 558
    :cond_14
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d()V

    .line 559
    return-void
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 3

    .line 577
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 578
    if-nez v0, :cond_8

    .line 579
    const/4 p1, 0x0

    return-object p1

    .line 580
    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->s(I)Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1

    return-object p1
.end method
