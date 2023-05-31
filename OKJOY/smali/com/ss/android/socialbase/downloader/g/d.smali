.class public Lcom/ss/android/socialbase/downloader/g/d;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/g/c;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private c:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ss/android/socialbase/downloader/b/h;",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/ss/android/socialbase/downloader/d/z;

.field private j:Lcom/ss/android/socialbase/downloader/d/v;

.field private k:Lcom/ss/android/socialbase/downloader/d/l;

.field private l:Lcom/ss/android/socialbase/downloader/d/x;

.field private m:Lcom/ss/android/socialbase/downloader/g/c$a;

.field private n:Lcom/ss/android/socialbase/downloader/d/u;

.field private o:Lcom/ss/android/socialbase/downloader/d/p;

.field private p:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private q:Lcom/ss/android/socialbase/downloader/d/ac;

.field private r:Z

.field private s:Lcom/ss/android/socialbase/downloader/d/q;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->r:Z

    .line 65
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/g/c$a;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/d;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    .line 74
    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 571
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 572
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 573
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;

    .line 574
    if-eqz v0, :cond_1a

    .line 575
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 578
    :cond_1e
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 7

    .prologue
    .line 676
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 684
    :cond_4
    return-void

    .line 679
    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 680
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_4

    .line 681
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 682
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6

    .prologue
    .line 687
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 695
    :cond_4
    return-void

    .line 690
    :cond_5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 691
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_4

    .line 692
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 693
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private d(Lcom/ss/android/socialbase/downloader/b/h;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v2

    .line 466
    monitor-enter v2

    move v1, v0

    .line 467
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 468
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 469
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;

    .line 470
    if-eqz v0, :cond_25

    .line 471
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, p1, v5}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    .line 467
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 474
    :cond_29
    monitor-exit v2

    .line 475
    return-void

    .line 474
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw v0
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/b/h;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p1, v0, :cond_7

    .line 479
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    .line 485
    :goto_6
    return-object v0

    .line 480
    :cond_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p1, v0, :cond_e

    .line 481
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    goto :goto_6

    .line 482
    :cond_e
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p1, v0, :cond_15

    .line 483
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    goto :goto_6

    .line 485
    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/h;I)Lcom/ss/android/socialbase/downloader/d/w;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_9

    if-gez p2, :cond_a

    .line 507
    :cond_9
    :goto_9
    return-object v0

    .line 501
    :cond_a
    monitor-enter v1

    .line 502
    :try_start_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_20

    .line 503
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 504
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;

    monitor-exit v1

    goto :goto_9

    .line 509
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v0

    .line 507
    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    goto :goto_9
.end method

.method public a()Lcom/ss/android/socialbase/downloader/g/c;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    return-object v0
.end method

.method public a(I)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a(I)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 296
    return-object p0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 6

    .prologue
    .line 153
    if-eqz p2, :cond_1d

    .line 154
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    monitor-enter v1

    .line 155
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1e

    .line 157
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 159
    :try_start_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    .line 162
    :cond_1d
    return-object p0

    .line 156
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 160
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/g;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a(Lcom/ss/android/socialbase/downloader/b/g;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 408
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/ac;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->q:Lcom/ss/android/socialbase/downloader/d/ac;

    .line 225
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/l;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->k:Lcom/ss/android/socialbase/downloader/d/l;

    .line 215
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->o:Lcom/ss/android/socialbase/downloader/d/p;

    .line 235
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 422
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->s:Lcom/ss/android/socialbase/downloader/d/q;

    .line 423
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/u;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->n:Lcom/ss/android/socialbase/downloader/d/u;

    .line 230
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/v;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->j:Lcom/ss/android/socialbase/downloader/d/v;

    .line 210
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 147
    if-nez p1, :cond_3

    .line 149
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object p0

    goto :goto_2
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/x;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->l:Lcom/ss/android/socialbase/downloader/d/x;

    .line 220
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->i:Lcom/ss/android/socialbase/downloader/d/z;

    .line 205
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 138
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->c:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 133
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->p:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 143
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 240
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/g/d;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 275
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 438
    return-object p0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 9

    .prologue
    .line 519
    invoke-virtual {p0, p3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v1

    .line 520
    if-nez v1, :cond_16

    .line 521
    if-eqz p4, :cond_15

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 522
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_15
    :goto_15
    return-void

    .line 526
    :cond_16
    monitor-enter v1

    .line 527
    if-eqz p4, :cond_44

    .line 528
    :try_start_19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 529
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;

    .line 530
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :goto_2e
    if-eqz v0, :cond_3f

    .line 534
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 535
    if-ltz v0, :cond_3f

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3f

    .line 536
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 549
    :cond_3f
    :goto_3f
    monitor-exit v1

    goto :goto_15

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_41

    throw v0

    .line 540
    :cond_44
    :try_start_44
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 541
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_41

    .line 542
    :try_start_4a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/b/h;

    .line 543
    if-eqz v0, :cond_66

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 544
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 547
    :cond_66
    monitor-exit v2

    goto :goto_3f

    :catchall_68
    move-exception v0

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_41

    :cond_6b
    move-object v0, p2

    goto :goto_2e
.end method

.method public a(Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/h;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;",
            "Lcom/ss/android/socialbase/downloader/b/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 581
    if-nez p1, :cond_3

    .line 600
    :cond_2
    :goto_2
    return-void

    .line 584
    :cond_3
    :try_start_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p2, v0, :cond_19

    .line 585
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_14

    .line 586
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 587
    monitor-exit v1

    goto :goto_2

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    :try_start_13
    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_14} :catch_14

    .line 597
    :catch_14
    move-exception v0

    .line 598
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 588
    :cond_19
    :try_start_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p2, v0, :cond_2a

    .line 589
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_20} :catch_14

    .line 590
    :try_start_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 591
    monitor-exit v1

    goto :goto_2

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    :try_start_29
    throw v0

    .line 592
    :cond_2a
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p2, v0, :cond_2

    .line 593
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_31} :catch_14

    .line 594
    :try_start_31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 595
    monitor-exit v1

    goto :goto_2

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3b} :catch_14
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 4

    .prologue
    .line 611
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 612
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->c:Lcom/ss/android/socialbase/downloader/downloader/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->c:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 613
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 614
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 615
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 616
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 618
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 619
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 621
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 622
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 624
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->i:Lcom/ss/android/socialbase/downloader/d/z;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->i:Lcom/ss/android/socialbase/downloader/d/z;

    .line 625
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->j:Lcom/ss/android/socialbase/downloader/d/v;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->j:Lcom/ss/android/socialbase/downloader/d/v;

    .line 626
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->k:Lcom/ss/android/socialbase/downloader/d/l;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->k:Lcom/ss/android/socialbase/downloader/d/l;

    .line 627
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->l:Lcom/ss/android/socialbase/downloader/d/x;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->l:Lcom/ss/android/socialbase/downloader/d/x;

    .line 628
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->n:Lcom/ss/android/socialbase/downloader/d/u;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->n:Lcom/ss/android/socialbase/downloader/d/u;

    .line 629
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->o:Lcom/ss/android/socialbase/downloader/d/p;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->o:Lcom/ss/android/socialbase/downloader/d/p;

    .line 630
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->p:Lcom/ss/android/socialbase/downloader/downloader/r;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->p:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 631
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->q:Lcom/ss/android/socialbase/downloader/d/ac;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->q:Lcom/ss/android/socialbase/downloader/d/ac;

    .line 632
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->s:Lcom/ss/android/socialbase/downloader/d/q;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->s:Lcom/ss/android/socialbase/downloader/d/q;

    .line 633
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->r:Z

    .line 82
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/b/h;)I
    .registers 4

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v1

    .line 490
    if-nez v1, :cond_8

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_7
    return v0

    .line 492
    :cond_8
    monitor-enter v1

    .line 493
    :try_start_9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_7

    .line 494
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->b(I)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 301
    return-object p0
.end method

.method public b(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 6

    .prologue
    .line 172
    if-eqz p2, :cond_1d

    .line 173
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    monitor-enter v1

    .line 174
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1e

    .line 176
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 178
    :try_start_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    .line 181
    :cond_1d
    return-object p0

    .line 175
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 179
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 185
    if-nez p1, :cond_3

    .line 187
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->c(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object p0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 245
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/g/d;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->b(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 326
    return-object p0
.end method

.method public b(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 270
    return-object p0
.end method

.method public b(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 7

    .prologue
    .line 553
    if-nez p2, :cond_3

    .line 567
    :cond_2
    :goto_2
    return-void

    .line 555
    :cond_3
    if-eqz p4, :cond_17

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 556
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 558
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 559
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_26

    .line 561
    :cond_17
    invoke-virtual {p0, p3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_2

    .line 564
    monitor-enter v1

    .line 565
    :try_start_1e
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    monitor-exit v1

    goto :goto_2

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    throw v0

    .line 559
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/d/z;)V
    .registers 2

    .prologue
    .line 603
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/d;->i:Lcom/ss/android/socialbase/downloader/d/z;

    .line 604
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 6

    .prologue
    .line 636
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 637
    if-eqz v0, :cond_a

    .line 640
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 642
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 646
    :cond_32
    :try_start_32
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 647
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3d} :catch_84

    .line 648
    :try_start_3d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/g/d;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 649
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/d;->f:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/g/d;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 652
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_81

    .line 654
    :cond_4c
    :try_start_4c
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_66

    .line 655
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_57} :catch_84

    .line 656
    :try_start_57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/g/d;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 657
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/d;->g:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/g/d;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 660
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_89

    .line 662
    :cond_66
    :try_start_66
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_80

    .line 663
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_71} :catch_84

    .line 664
    :try_start_71
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/g/d;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 665
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/g/d;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 668
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_8c

    .line 673
    :cond_80
    :goto_80
    return-void

    .line 652
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    :try_start_83
    throw v0
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_84} :catch_84

    .line 670
    :catch_84
    move-exception v0

    .line 671
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_80

    .line 660
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8c} :catch_84

    .line 668
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v0
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8f} :catch_84
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->r:Z

    return v0
.end method

.method public c()Lcom/ss/android/socialbase/downloader/d/v;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->j:Lcom/ss/android/socialbase/downloader/d/v;

    return-object v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/b/h;)Lcom/ss/android/socialbase/downloader/d/w;
    .registers 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;

    return-object v0
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->c(I)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 316
    return-object p0
.end method

.method public c(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 6

    .prologue
    .line 191
    if-eqz p2, :cond_1d

    .line 192
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 193
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1e

    .line 195
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->d:Ljava/util/Map;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 197
    :try_start_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->e:Landroid/util/SparseArray;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    .line 200
    :cond_1d
    return-object p0

    .line 194
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 198
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 250
    return-object p0
.end method

.method public c(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->b(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 306
    return-object p0
.end method

.method public d()Lcom/ss/android/socialbase/downloader/d/l;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->k:Lcom/ss/android/socialbase/downloader/d/l;

    return-object v0
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->d(I)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 321
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 255
    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->d(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 336
    return-object p0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/d/x;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->l:Lcom/ss/android/socialbase/downloader/d/x;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 265
    return-object p0
.end method

.method public e(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->c(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 341
    return-object p0
.end method

.method public f()Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->c:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 331
    return-object p0
.end method

.method public f(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->e(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 346
    return-object p0
.end method

.method public g()Lcom/ss/android/socialbase/downloader/downloader/r;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->p:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->g(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 356
    return-object p0
.end method

.method public g(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->f(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 351
    return-object p0
.end method

.method public h()Lcom/ss/android/socialbase/downloader/d/u;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->n:Lcom/ss/android/socialbase/downloader/d/u;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->h(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 361
    return-object p0
.end method

.method public h(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->i(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 366
    return-object p0
.end method

.method public i()Lcom/ss/android/socialbase/downloader/d/p;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->o:Lcom/ss/android/socialbase/downloader/d/p;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->i(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 371
    return-object p0
.end method

.method public i(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->g(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 376
    return-object p0
.end method

.method public j()Lcom/ss/android/socialbase/downloader/d/z;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->i:Lcom/ss/android/socialbase/downloader/d/z;

    return-object v0
.end method

.method public j(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->j(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 381
    return-object p0
.end method

.method public k()Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->q:Lcom/ss/android/socialbase/downloader/d/ac;

    return-object v0
.end method

.method public k(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->m(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 393
    return-object p0
.end method

.method public l()Lcom/ss/android/socialbase/downloader/d/q;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->s:Lcom/ss/android/socialbase/downloader/d/q;

    return-object v0
.end method

.method public l(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->h(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 398
    return-object p0
.end method

.method public m(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->k(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 403
    return-object p0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v0

    .line 128
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public n()I
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c$a;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    .line 444
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 445
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    if-nez v0, :cond_15

    .line 446
    const/4 v0, 0x0

    .line 448
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    goto :goto_14
.end method

.method public n(Z)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->m:Lcom/ss/android/socialbase/downloader/g/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->l(Z)Lcom/ss/android/socialbase/downloader/g/c$a;

    .line 413
    return-object p0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    if-nez v0, :cond_6

    .line 453
    const/4 v0, 0x0

    .line 454
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    goto :goto_5
.end method

.method public p()V
    .registers 6

    .prologue
    .line 458
    const-string v0, "DownloadTask"

    const-string v1, "same task just tryDownloading, so add listener in last task instead of tryDownload"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/g/d;->d(Lcom/ss/android/socialbase/downloader/b/h;)V

    .line 460
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/g/d;->d(Lcom/ss/android/socialbase/downloader/b/h;)V

    .line 461
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->l:Lcom/ss/android/socialbase/downloader/d/x;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/d;->a:Lcom/ss/android/socialbase/downloader/g/c;

    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v3, 0x3eb

    const-string v4, "has another same task, add Listener to old task"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 462
    return-void
.end method

.method public q()Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/d;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0
.end method
