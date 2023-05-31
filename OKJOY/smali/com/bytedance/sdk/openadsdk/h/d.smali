.class public Lcom/bytedance/sdk/openadsdk/h/d;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/d$b;,
        Lcom/bytedance/sdk/openadsdk/h/d$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/bytedance/sdk/openadsdk/h/d;


# instance fields
.field private volatile a:I

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/h/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/h/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/h/d$b",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/h/a/c;

.field private volatile h:Lcom/bytedance/sdk/openadsdk/h/a/b;

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bytedance/sdk/openadsdk/h/b$b;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/h/c;

.field private volatile l:Lcom/bytedance/sdk/openadsdk/h/c;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const v0, 0x28000

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->a:I

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    .line 75
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->j:Lcom/bytedance/sdk/openadsdk/h/b$b;

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d$b;-><init>(Lcom/bytedance/sdk/openadsdk/h/d$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d$b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Ljava/util/concurrent/ExecutorService;

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/d$b;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/h/d$b;)Ljava/util/concurrent/ExecutorService;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/h/d$b",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x1

    .line 508
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a()I

    move-result v1

    .line 511
    if-ge v1, v3, :cond_1e

    .line 516
    :goto_8
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/h/d$4;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/h/d$4;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/h/d$5;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/h/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/h/d$b;)V

    move-object v7, p0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v1

    .line 513
    :cond_1e
    if-le v1, v0, :cond_22

    move v3, v0

    .line 514
    goto :goto_8

    :cond_22
    move v3, v1

    goto :goto_8
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/h/d;)Lcom/bytedance/sdk/openadsdk/h/d$b;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    return-object v0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/h/d;
    .registers 2

    .prologue
    .line 124
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v0, :cond_13

    .line 125
    const-class v1, Lcom/bytedance/sdk/openadsdk/h/d;

    monitor-enter v1

    .line 126
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v0, :cond_12

    .line 127
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

    .line 129
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 131
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

    return-object v0

    .line 129
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/h/c;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->k:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 66
    if-lez p1, :cond_4

    .line 67
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->a:I

    .line 70
    :cond_4
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_20

    .line 71
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxPreloadSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_20
    return-void
.end method

.method public declared-synchronized a(JJJ)V
    .registers 7

    .prologue
    .line 104
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/openadsdk/h/a/c;

    .line 55
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->f:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, v0, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZLjava/lang/String;)V

    .line 385
    return-void
.end method

.method a(ZLjava/lang/String;)V
    .registers 12

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 178
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->m:Ljava/lang/String;

    .line 179
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->n:Z

    .line 181
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_22

    .line 182
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentPlayKey, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_22
    if-nez p2, :cond_81

    .line 187
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    monitor-enter v2

    .line 188
    :try_start_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 189
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 192
    :cond_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_7e

    .line 194
    if-eqz v1, :cond_127

    .line 195
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_42
    :goto_42
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bytedance/sdk/openadsdk/h/d$a;

    .line 196
    iget-boolean v1, v7, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    iget-boolean v2, v7, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    iget v3, v7, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    iget-object v4, v7, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    iget-object v5, v7, Lcom/bytedance/sdk/openadsdk/h/d$a;->e:Ljava/util/Map;

    iget-object v6, v7, Lcom/bytedance/sdk/openadsdk/h/d$a;->f:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 198
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_42

    .line 199
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPlayKey, resume preload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 192
    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0

    .line 204
    :cond_81
    sget v3, Lcom/bytedance/sdk/openadsdk/h/e;->h:I

    .line 205
    if-eq v3, v8, :cond_88

    const/4 v0, 0x2

    if-ne v3, v0, :cond_128

    .line 208
    :cond_88
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    monitor-enter v4

    .line 209
    const/4 v0, 0x0

    :try_start_8c
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v2, v0

    :goto_93
    if-ge v2, v5, :cond_c4

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 211
    if-eqz v0, :cond_be

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    if-eqz v6, :cond_bb

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_bb

    .line 214
    if-nez v1, :cond_b8

    .line 215
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 217
    :cond_b8
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_bb
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_be
    move-object v0, v1

    .line 209
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_93

    .line 223
    :cond_c4
    monitor-exit v4
    :try_end_c5
    .catchall {:try_start_8c .. :try_end_c5} :catchall_ff

    .line 225
    if-eqz v1, :cond_127

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_127

    .line 226
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d1
    :goto_d1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 227
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->a()V

    .line 229
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v4, :cond_d1

    .line 230
    const-string v4, "TAG_PROXY_Preloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentPlayKey, cancel preload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/b;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 223
    :catchall_ff
    move-exception v0

    :try_start_100
    monitor-exit v4
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v0

    .line 234
    :cond_102
    if-ne v3, v8, :cond_127

    .line 235
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    monitor-enter v2

    .line 236
    :try_start_107
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10b
    :goto_10b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_126

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 237
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/b;->n:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/d$a;

    .line 238
    if-eqz v0, :cond_10b

    .line 239
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 242
    :catchall_123
    move-exception v0

    monitor-exit v2
    :try_end_125
    .catchall {:try_start_107 .. :try_end_125} :catchall_123

    throw v0

    :cond_126
    :try_start_126
    monitor-exit v2
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_123

    .line 258
    :cond_127
    :goto_127
    return-void

    .line 245
    :cond_128
    const/4 v0, 0x1

    if-ne v3, v0, :cond_127

    .line 247
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    monitor-enter v2

    .line 248
    :try_start_12e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 249
    if-eqz v0, :cond_14c

    .line 250
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 252
    :goto_142
    monitor-exit v2
    :try_end_143
    .catchall {:try_start_12e .. :try_end_143} :catchall_149

    .line 253
    if-eqz v0, :cond_127

    .line 254
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->a()V

    goto :goto_127

    .line 252
    :catchall_149
    move-exception v0

    :try_start_14a
    monitor-exit v2
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    throw v0

    :cond_14c
    move-object v0, v1

    goto :goto_142
.end method

.method public varargs a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_b

    .line 286
    const-string v2, "TAG_PROXY_Preloader"

    const-string v3, "preload start \uff01\uff01\uff01\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_b
    if-eqz p1, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/d;->h:Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-object v10, v2

    .line 289
    :goto_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/h/d;->f:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 290
    if-eqz v10, :cond_1a

    if-nez v12, :cond_2c

    .line 291
    :cond_1a
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_25

    .line 292
    const-string v2, "TAG_PROXY_Preloader"

    const-string v3, "cache or videoProxyDB null in Preloader!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_25
    :goto_25
    return-void

    .line 288
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/openadsdk/h/a/c;

    move-object v10, v2

    goto :goto_12

    .line 296
    :cond_2c
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    if-eqz p6, :cond_25

    move-object/from16 v0, p6

    array-length v2, v0

    if-lez v2, :cond_25

    .line 300
    if-gtz p3, :cond_1fe

    .line 301
    move-object/from16 v0, p0

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/h/d;->a:I

    .line 304
    :goto_3f
    if-eqz p2, :cond_7d

    move-object/from16 v11, p4

    .line 306
    :goto_43
    invoke-virtual {v10, v11}, Lcom/bytedance/sdk/openadsdk/h/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_83

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, v5

    cmp-long v3, v6, v8

    if-ltz v3, :cond_83

    .line 308
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_25

    .line 309
    const-string v3, "TAG_PROXY_Preloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need preload, file size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", need preload size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 304
    :cond_7d
    invoke-static/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_43

    .line 314
    :cond_83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/h/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v2, v3, v11}, Lcom/bytedance/sdk/openadsdk/h/f;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 316
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_25

    .line 317
    const-string v2, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has running proxy task, skip preload for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 323
    :cond_b1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    monitor-enter v13

    .line 324
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    if-eqz p1, :cond_d1

    const/4 v2, 0x1

    :goto_bd
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v9, v0

    .line 326
    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 327
    monitor-exit v13

    goto/16 :goto_25

    .line 379
    :catchall_ce
    move-exception v2

    monitor-exit v13
    :try_end_d0
    .catchall {:try_start_b6 .. :try_end_d0} :catchall_ce

    throw v2

    .line 324
    :cond_d1
    const/4 v2, 0x0

    goto :goto_bd

    .line 330
    :cond_d3
    :try_start_d3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/d$a;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/h/d$a;-><init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/d;->m:Ljava/lang/String;

    .line 332
    if-eqz v3, :cond_180

    .line 333
    sget v4, Lcom/bytedance/sdk/openadsdk/h/e;->h:I

    .line 335
    const/4 v6, 0x3

    if-ne v4, v6, :cond_124

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_f2
    .catchall {:try_start_d3 .. :try_end_f2} :catchall_ce

    .line 337
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v3
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_121

    .line 340
    :try_start_fa
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_11e

    .line 341
    const-string v2, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel preload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", add to pending queue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_11e
    monitor-exit v13
    :try_end_11f
    .catchall {:try_start_fa .. :try_end_11f} :catchall_ce

    goto/16 :goto_25

    .line 338
    :catchall_121
    move-exception v2

    :try_start_122
    monitor-exit v3
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    :try_start_123
    throw v2

    .line 345
    :cond_124
    const/4 v6, 0x2

    if-ne v4, v6, :cond_148

    .line 346
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_145

    .line 347
    const-string v2, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel preload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_145
    monitor-exit v13

    goto/16 :goto_25

    .line 350
    :cond_148
    const/4 v6, 0x1

    if-ne v4, v6, :cond_180

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/h/d;->n:Z

    move/from16 v0, p1

    if-ne v4, v0, :cond_180

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 351
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_17d

    .line 352
    const-string v2, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel preload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", it is playing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_17d
    monitor-exit v13

    goto/16 :goto_25

    .line 358
    :cond_180
    const/4 v3, 0x0

    .line 359
    invoke-static/range {p5 .. p5}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 360
    if-eqz v7, :cond_1b5

    .line 361
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    const/4 v3, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v6, v3

    :goto_19a
    if-ge v6, v8, :cond_1b4

    .line 363
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 364
    if-eqz v3, :cond_1b0

    .line 365
    new-instance v14, Lcom/bytedance/sdk/openadsdk/h/i$b;

    iget-object v15, v3, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-direct {v14, v15, v3}, Lcom/bytedance/sdk/openadsdk/h/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1b0
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_19a

    :cond_1b4
    move-object v3, v4

    .line 369
    :cond_1b5
    new-instance v4, Lcom/bytedance/sdk/openadsdk/h/b$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/h/b$a;-><init>()V

    .line 371
    invoke-virtual {v4, v10}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/a/a;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v4

    .line 372
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/bytedance/sdk/openadsdk/h/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/h/l;

    .line 373
    invoke-static/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bytedance/sdk/openadsdk/h/l;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/l;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v4

    .line 374
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v3

    .line 375
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(I)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/h/d;->j:Lcom/bytedance/sdk/openadsdk/h/b$b;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/b$b;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v3

    .line 376
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a()Lcom/bytedance/sdk/openadsdk/h/b;

    move-result-object v2

    .line 378
    invoke-interface {v9, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit v13
    :try_end_1f5
    .catchall {:try_start_123 .. :try_end_1f5} :catchall_ce

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_25

    :cond_1fe
    move/from16 v5, p3

    goto/16 :goto_3f
.end method

.method public varargs a(ZZILjava/lang/String;[Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 278
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 387
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    :goto_6
    return-void

    .line 390
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/d;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method b()Lcom/bytedance/sdk/openadsdk/h/c;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->l:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 408
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/h/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method
