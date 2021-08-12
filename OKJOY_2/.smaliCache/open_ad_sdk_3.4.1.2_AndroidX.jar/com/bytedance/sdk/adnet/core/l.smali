.class public Lcom/bytedance/sdk/adnet/core/l;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/l$a;,
        Lcom/bytedance/sdk/adnet/core/l$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bytedance/sdk/adnet/face/a;

.field private final f:Lcom/bytedance/sdk/adnet/face/b;

.field private final g:Lcom/bytedance/sdk/adnet/face/c;

.field private final h:[Lcom/bytedance/sdk/adnet/core/h;

.field private i:Lcom/bytedance/sdk/adnet/core/d;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;)V
    .registers 4

    .line 215
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/adnet/core/l;-><init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;I)V
    .registers 7

    .line 201
    new-instance v0, Lcom/bytedance/sdk/adnet/core/g;

    new-instance v1, Landroid/os/Handler;

    .line 205
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/core/g;-><init>(Landroid/os/Handler;)V

    .line 201
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/adnet/core/l;-><init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;ILcom/bytedance/sdk/adnet/face/c;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;ILcom/bytedance/sdk/adnet/face/c;)V
    .registers 6

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->b:Ljava/util/Set;

    .line 133
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 138
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->j:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->k:Ljava/util/List;

    .line 187
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/l;->e:Lcom/bytedance/sdk/adnet/face/a;

    .line 188
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/l;->f:Lcom/bytedance/sdk/adnet/face/b;

    .line 189
    new-array p1, p3, [Lcom/bytedance/sdk/adnet/core/h;

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/l;->h:[Lcom/bytedance/sdk/adnet/core/h;

    .line 190
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/core/l;->g:Lcom/bytedance/sdk/adnet/face/c;

    .line 191
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "TT;>;)",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "TT;>;"
        }
    .end annotation

    .line 318
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/l;->b(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 319
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->setStartTime()V

    .line 320
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->setRequestQueue(Lcom/bytedance/sdk/adnet/core/l;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->b:Ljava/util/Set;

    monitor-enter v0

    .line 322
    :try_start_c
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/l;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_34

    .line 326
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/l;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setSequence(I)Lcom/bytedance/sdk/adnet/core/Request;

    .line 327
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    .line 331
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 333
    return-object p1

    .line 335
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 336
    return-object p1

    .line 323
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public a()V
    .registers 7

    .line 222
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/l;->b()V

    .line 224
    new-instance v0, Lcom/bytedance/sdk/adnet/core/d;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/l;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/l;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/l;->e:Lcom/bytedance/sdk/adnet/face/a;

    iget-object v4, p0, Lcom/bytedance/sdk/adnet/core/l;->g:Lcom/bytedance/sdk/adnet/face/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/adnet/core/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->i:Lcom/bytedance/sdk/adnet/core/d;

    .line 225
    const-string v1, "tt_pangle_thread_CacheDispatcher"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/d;->setName(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->i:Lcom/bytedance/sdk/adnet/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/d;->start()V

    .line 229
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/l;->h:[Lcom/bytedance/sdk/adnet/core/h;

    array-length v1, v1

    if-ge v0, v1, :cond_4f

    .line 230
    new-instance v1, Lcom/bytedance/sdk/adnet/core/h;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/l;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/l;->f:Lcom/bytedance/sdk/adnet/face/b;

    iget-object v4, p0, Lcom/bytedance/sdk/adnet/core/l;->e:Lcom/bytedance/sdk/adnet/face/a;

    iget-object v5, p0, Lcom/bytedance/sdk/adnet/core/l;->g:Lcom/bytedance/sdk/adnet/face/c;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/adnet/core/h;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/b;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tt_pangle_thread_NetworkDispatcher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/adnet/core/h;->setName(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/l;->h:[Lcom/bytedance/sdk/adnet/core/h;

    aput-object v1, v2, v0

    .line 234
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/h;->start()V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 236
    :cond_4f
    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->k:Ljava/util/List;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/l;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/adnet/core/l$a;

    .line 382
    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/adnet/core/l$a;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    .line 383
    goto :goto_9

    .line 384
    :cond_19
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public b()V
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->i:Lcom/bytedance/sdk/adnet/core/d;

    if-eqz v0, :cond_7

    .line 243
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/d;->a()V

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->h:[Lcom/bytedance/sdk/adnet/core/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 246
    if-eqz v3, :cond_14

    .line 247
    invoke-virtual {v3}, Lcom/bytedance/sdk/adnet/core/h;->a()V

    .line 245
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 250
    :cond_17
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 345
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    .line 348
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->d()Lcom/bytedance/sdk/adnet/c/a;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 350
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->d()Lcom/bytedance/sdk/adnet/c/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/adnet/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 352
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setUrl(Ljava/lang/String;)V

    .line 355
    :cond_28
    return-void

    .line 346
    :cond_29
    :goto_29
    return-void
.end method

.method public c()I
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method c(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->b:Ljava/util/Set;

    monitor-enter v0

    .line 366
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/l;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    .line 368
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/l;->j:Ljava/util/List;

    monitor-enter v1

    .line 369
    :try_start_c
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/adnet/core/l$b;

    .line 370
    invoke-interface {v2, p1}, Lcom/bytedance/sdk/adnet/core/l$b;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 371
    goto :goto_12

    .line 372
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    .line 373
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    .line 374
    return-void

    .line 372
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    .line 367
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method
