.class public Lcom/bytedance/sdk/openadsdk/i/d;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/d$b;,
        Lcom/bytedance/sdk/openadsdk/i/d$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/bytedance/sdk/openadsdk/i/d;


# instance fields
.field private volatile a:I

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/i/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/i/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/i/d$b<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/i/b/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/i/a/c;

.field private volatile h:Lcom/bytedance/sdk/openadsdk/i/a/b;

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bytedance/sdk/openadsdk/i/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bytedance/sdk/openadsdk/i/b$b;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/i/c;

.field private volatile l:Lcom/bytedance/sdk/openadsdk/i/c;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x28000

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/d;->a:I

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    .line 76
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/i/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/d;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->j:Lcom/bytedance/sdk/openadsdk/i/b$b;

    .line 95
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/i/d$b;-><init>(Lcom/bytedance/sdk/openadsdk/i/d$1;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->c:Lcom/bytedance/sdk/openadsdk/i/d$b;

    .line 96
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d$b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/d;->d:Ljava/util/concurrent/ExecutorService;

    .line 97
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/i/d$b;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/i/d$b;)Ljava/util/concurrent/ExecutorService;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/i/d$b<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 509
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a()I

    move-result v0

    .line 512
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v2, :cond_a

    .line 513
    move v5, v2

    goto :goto_f

    .line 514
    :cond_a
    if-le v0, v1, :cond_e

    .line 515
    move v5, v1

    goto :goto_f

    .line 514
    :cond_e
    move v5, v0

    .line 517
    :goto_f
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Lcom/bytedance/sdk/openadsdk/i/d$4;

    invoke-direct {v10}, Lcom/bytedance/sdk/openadsdk/i/d$4;-><init>()V

    new-instance v11, Lcom/bytedance/sdk/openadsdk/i/d$5;

    invoke-direct {v11, p0}, Lcom/bytedance/sdk/openadsdk/i/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/i/d$b;)V

    move-object v3, v0

    move-object v9, p0

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/i/d;)Lcom/bytedance/sdk/openadsdk/i/d$b;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/d;->c:Lcom/bytedance/sdk/openadsdk/i/d$b;

    return-object p0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/i/d;
    .registers 2

    .line 125
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->e:Lcom/bytedance/sdk/openadsdk/i/d;

    if-nez v0, :cond_17

    .line 126
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/d;

    monitor-enter v0

    .line 127
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/d;->e:Lcom/bytedance/sdk/openadsdk/i/d;

    if-nez v1, :cond_12

    .line 128
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/i/d;->e:Lcom/bytedance/sdk/openadsdk/i/d;

    .line 130
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 132
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/d;->e:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object v0
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/i/c;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d;->k:Lcom/bytedance/sdk/openadsdk/i/c;

    return-object v0
.end method

.method public a(I)V
    .registers 4

    .line 67
    if-lez p1, :cond_4

    .line 68
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->a:I

    .line 71
    :cond_4
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_20

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxPreloadSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_Preloader"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_20
    return-void
.end method

.method public declared-synchronized a(JJJ)V
    .registers 7

    monitor-enter p0

    .line 105
    monitor-exit p0

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/a/c;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->g:Lcom/bytedance/sdk/openadsdk/i/a/c;

    .line 56
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/b/c;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->f:Lcom/bytedance/sdk/openadsdk/i/b/c;

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/bytedance/sdk/openadsdk/i/d;->a(ZZLjava/lang/String;)V

    .line 386
    return-void
.end method

.method a(ZLjava/lang/String;)V
    .registers 10

    .line 179
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/d;->m:Ljava/lang/String;

    .line 180
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->n:Z

    .line 182
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_20

    .line 183
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPlayKey, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_20
    const/4 v0, 0x0

    if-nez p2, :cond_82

    .line 187
    nop

    .line 188
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    monitor-enter v1

    .line 189
    :try_start_27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    .line 190
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 193
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_7f

    .line 195
    if-eqz v0, :cond_7d

    .line 196
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/i/d$a;

    .line 197
    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/i/d$a;->a:Z

    iget-boolean v2, p2, Lcom/bytedance/sdk/openadsdk/i/d$a;->b:Z

    iget v3, p2, Lcom/bytedance/sdk/openadsdk/i/d$a;->c:I

    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/i/d$a;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/i/d$a;->e:Ljava/util/Map;

    iget-object v6, p2, Lcom/bytedance/sdk/openadsdk/i/d$a;->f:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/i/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 199
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_7c

    .line 200
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPlayKey, resume preload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/i/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_7c
    goto :goto_42

    .line 204
    :cond_7d
    goto/16 :goto_14d

    .line 193
    :catchall_7f
    move-exception p1

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p1

    .line 205
    :cond_82
    sget v1, Lcom/bytedance/sdk/openadsdk/i/e;->h:I

    .line 206
    const/4 v2, 0x3

    if-eq v1, v2, :cond_b4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8b

    goto :goto_b4

    .line 246
    :cond_8b
    const/4 v2, 0x1

    if-ne v1, v2, :cond_b2

    .line 247
    nop

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 249
    :try_start_92
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/b/b;->a(Z)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 250
    if-eqz p1, :cond_a7

    .line 251
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/i/b;

    .line 253
    :cond_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_af

    .line 254
    if-eqz v0, :cond_14d

    .line 255
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->a()V

    goto/16 :goto_14d

    .line 253
    :catchall_af
    move-exception p1

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw p1

    .line 246
    :cond_b2
    :goto_b2
    goto/16 :goto_14d

    .line 208
    :cond_b4
    :goto_b4
    nop

    .line 209
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    monitor-enter p1

    .line 210
    const/4 p2, 0x0

    :try_start_b9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_bf
    if-ge p2, v3, :cond_eb

    .line 211
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 212
    if-eqz v4, :cond_e8

    .line 214
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_e5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e5

    .line 215
    if-nez v0, :cond_e2

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 218
    :cond_e2
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 221
    :cond_e5
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 210
    :cond_e8
    add-int/lit8 p2, p2, 0x1

    goto :goto_bf

    .line 224
    :cond_eb
    monitor-exit p1
    :try_end_ec
    .catchall {:try_start_b9 .. :try_end_ec} :catchall_14e

    .line 226
    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b2

    .line 227
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_126

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/i/b;

    .line 228
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/b;->a()V

    .line 230
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v3, :cond_125

    .line 231
    const-string v3, "TAG_PROXY_Preloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentPlayKey, cancel preload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/i/b;->g:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_125
    goto :goto_f8

    .line 235
    :cond_126
    if-ne v1, v2, :cond_b2

    .line 236
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    monitor-enter p1

    .line 237
    :try_start_12b
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_147

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/i/b;

    .line 238
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/b;->n:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/i/d$a;

    .line 239
    if-eqz v0, :cond_146

    .line 240
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_146
    goto :goto_12f

    .line 243
    :cond_147
    monitor-exit p1

    goto/16 :goto_b2

    :catchall_14a
    move-exception p2

    monitor-exit p1
    :try_end_14c
    .catchall {:try_start_12b .. :try_end_14c} :catchall_14a

    throw p2

    .line 259
    :cond_14d
    :goto_14d
    return-void

    .line 224
    :catchall_14e
    move-exception p2

    :try_start_14f
    monitor-exit p1
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw p2
.end method

.method public varargs a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_13

    .line 287
    const-string v2, "TAG_PROXY_Preloader"

    const-string v3, "preload start \uff01\uff01\uff01\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_13
    if-eqz v0, :cond_18

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->h:Lcom/bytedance/sdk/openadsdk/i/a/b;

    goto :goto_1a

    :cond_18
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->g:Lcom/bytedance/sdk/openadsdk/i/a/c;

    :goto_1a
    move-object v11, v2

    .line 290
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/i/d;->f:Lcom/bytedance/sdk/openadsdk/i/b/c;

    .line 291
    if-eqz v11, :cond_1e1

    if-nez v12, :cond_23

    goto/16 :goto_1e1

    .line 297
    :cond_23
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    if-eqz v10, :cond_1e0

    array-length v2, v10

    if-gtz v2, :cond_30

    goto/16 :goto_1e0

    .line 301
    :cond_30
    if-gtz p3, :cond_36

    .line 302
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->a:I

    move v13, v2

    goto :goto_38

    .line 301
    :cond_36
    move/from16 v13, p3

    .line 305
    :goto_38
    if-eqz p2, :cond_3c

    move-object v14, v9

    goto :goto_41

    :cond_3c
    invoke-static/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 307
    :goto_41
    invoke-virtual {v11, v14}, Lcom/bytedance/sdk/openadsdk/i/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 308
    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v13

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7b

    .line 309
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_7a

    .line 310
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no need preload, file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", need preload size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_7a
    return-void

    .line 315
    :cond_7b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f;->a()Lcom/bytedance/sdk/openadsdk/i/f;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/i/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v2, v3, v14}, Lcom/bytedance/sdk/openadsdk/i/f;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 317
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_a5

    .line 318
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has running proxy task, skip preload for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_a5
    return-void

    .line 324
    :cond_a6
    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    monitor-enter v15

    .line 325
    :try_start_a9
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->b:Landroid/util/SparseArray;

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_b2

    move v3, v8

    goto :goto_b4

    :cond_b2
    move/from16 v3, v16

    :goto_b4
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    .line 327
    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 328
    monitor-exit v15

    return-void

    .line 331
    :cond_c3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/i/d$a;

    move-object v2, v6

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v13

    move-object v10, v6

    move-object/from16 v6, p4

    move-object/from16 v17, v7

    move-object/from16 v7, p5

    move/from16 p3, v13

    move v13, v8

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/i/d$a;-><init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 332
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->m:Ljava/lang/String;

    .line 333
    if-eqz v2, :cond_164

    .line 334
    sget v3, Lcom/bytedance/sdk/openadsdk/i/e;->h:I

    .line 336
    const/4 v4, 0x3

    if-ne v3, v4, :cond_113

    .line 337
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_e6
    .catchall {:try_start_a9 .. :try_end_e6} :catchall_1dd

    .line 338
    :try_start_e6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/i/d;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    monitor-exit v2
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_110

    .line 341
    :try_start_ec
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_10e

    .line 342
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", add to pending queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_10e
    monitor-exit v15
    :try_end_10f
    .catchall {:try_start_ec .. :try_end_10f} :catchall_1dd

    return-void

    .line 339
    :catchall_110
    move-exception v0

    :try_start_111
    monitor-exit v2
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    :try_start_112
    throw v0

    .line 346
    :cond_113
    const/4 v4, 0x2

    if-ne v3, v4, :cond_134

    .line 347
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_132

    .line 348
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_132
    monitor-exit v15

    return-void

    .line 351
    :cond_134
    if-ne v3, v13, :cond_164

    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/i/d;->n:Z

    if-ne v3, v0, :cond_164

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 352
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_162

    .line 353
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", it is playing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_162
    monitor-exit v15

    return-void

    .line 359
    :cond_164
    const/4 v0, 0x0

    .line 360
    invoke-static/range {p5 .. p5}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_197

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, v16

    :goto_17e
    if-ge v4, v3, :cond_197

    .line 364
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 365
    if-eqz v5, :cond_194

    .line 366
    new-instance v6, Lcom/bytedance/sdk/openadsdk/i/i$b;

    iget-object v7, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/bytedance/sdk/openadsdk/i/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_194
    add-int/lit8 v4, v4, 0x1

    goto :goto_17e

    .line 370
    :cond_197
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/b$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/i/b$a;-><init>()V

    .line 372
    invoke-virtual {v2, v11}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/b/c;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v9}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/i/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/l;

    .line 374
    invoke-static/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/i/l;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/l;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    .line 375
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v0

    .line 376
    move/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(I)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->j:Lcom/bytedance/sdk/openadsdk/i/b$b;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/b$b;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a()Lcom/bytedance/sdk/openadsdk/i/b;

    move-result-object v0

    .line 379
    move-object/from16 v2, v17

    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v15
    :try_end_1d7
    .catchall {:try_start_112 .. :try_end_1d7} :catchall_1dd

    .line 381
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void

    .line 380
    :catchall_1dd
    move-exception v0

    :try_start_1de
    monitor-exit v15
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    throw v0

    .line 298
    :cond_1e0
    :goto_1e0
    return-void

    .line 292
    :cond_1e1
    :goto_1e1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_1ec

    .line 293
    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "cache or videoProxyDB null in Preloader!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1ec
    return-void
.end method

.method public varargs a(ZZILjava/lang/String;[Ljava/lang/String;)V
    .registers 13

    .line 279
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/i/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .registers 5

    .line 388
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 389
    return-void

    .line 391
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/i/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/d;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method b()Lcom/bytedance/sdk/openadsdk/i/c;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d;->l:Lcom/bytedance/sdk/openadsdk/i/c;

    return-object v0
.end method

.method public d()V
    .registers 2

    .line 409
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/i/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method
