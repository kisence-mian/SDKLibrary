.class public Lcom/bytedance/sdk/adnet/core/m;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/m$a;,
        Lcom/bytedance/sdk/adnet/core/m$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bytedance/sdk/adnet/face/a;

.field private final f:Lcom/bytedance/sdk/adnet/face/b;

.field private final g:Lcom/bytedance/sdk/adnet/face/c;

.field private final h:[Lcom/bytedance/sdk/adnet/core/i;

.field private i:Lcom/bytedance/sdk/adnet/core/d;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;)V
    .registers 4

    .prologue
    .line 214
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/adnet/core/m;-><init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;I)V
    .registers 7

    .prologue
    .line 200
    new-instance v0, Lcom/bytedance/sdk/adnet/core/g;

    new-instance v1, Landroid/os/Handler;

    .line 204
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/core/g;-><init>(Landroid/os/Handler;)V

    .line 200
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/adnet/core/m;-><init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;ILcom/bytedance/sdk/adnet/face/c;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;ILcom/bytedance/sdk/adnet/face/c;)V
    .registers 6

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 137
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->j:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->k:Ljava/util/List;

    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/m;->e:Lcom/bytedance/sdk/adnet/face/a;

    .line 187
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/m;->f:Lcom/bytedance/sdk/adnet/face/b;

    .line 188
    new-array v0, p3, [Lcom/bytedance/sdk/adnet/core/i;

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:[Lcom/bytedance/sdk/adnet/core/i;

    .line 189
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/core/m;->g:Lcom/bytedance/sdk/adnet/face/c;

    .line 190
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
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<TT;>;)",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/m;->b(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 316
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->setStartTime()V

    .line 317
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->setRequestQueue(Lcom/bytedance/sdk/adnet/core/m;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 318
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Ljava/util/Set;

    monitor-enter v1

    .line 319
    :try_start_c
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_2e

    .line 323
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/m;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setSequence(I)Lcom/bytedance/sdk/adnet/core/Request;

    .line 324
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    .line 328
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_31

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 333
    :goto_2d
    return-object p1

    .line 320
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 332
    :cond_31
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2d
.end method

.method public a()V
    .registers 7

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/m;->b()V

    .line 223
    new-instance v0, Lcom/bytedance/sdk/adnet/core/d;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/m;->e:Lcom/bytedance/sdk/adnet/face/a;

    iget-object v4, p0, Lcom/bytedance/sdk/adnet/core/m;->g:Lcom/bytedance/sdk/adnet/face/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/adnet/core/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->i:Lcom/bytedance/sdk/adnet/core/d;

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->i:Lcom/bytedance/sdk/adnet/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/d;->start()V

    .line 227
    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/m;->h:[Lcom/bytedance/sdk/adnet/core/i;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 228
    new-instance v1, Lcom/bytedance/sdk/adnet/core/i;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/m;->f:Lcom/bytedance/sdk/adnet/face/b;

    iget-object v4, p0, Lcom/bytedance/sdk/adnet/core/m;->e:Lcom/bytedance/sdk/adnet/face/a;

    iget-object v5, p0, Lcom/bytedance/sdk/adnet/core/m;->g:Lcom/bytedance/sdk/adnet/face/c;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/adnet/core/i;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/b;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V

    .line 230
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/m;->h:[Lcom/bytedance/sdk/adnet/core/i;

    aput-object v1, v2, v0

    .line 231
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/i;->start()V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 233
    :cond_34
    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/m;->k:Ljava/util/List;

    monitor-enter v1

    .line 378
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/m$a;

    .line 379
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    goto :goto_9

    .line 381
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 382
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->i:Lcom/bytedance/sdk/adnet/core/d;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->i:Lcom/bytedance/sdk/adnet/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/d;->a()V

    .line 242
    :cond_9
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/m;->h:[Lcom/bytedance/sdk/adnet/core/i;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    .line 243
    if-eqz v3, :cond_16

    .line 244
    invoke-virtual {v3}, Lcom/bytedance/sdk/adnet/core/i;->a()V

    .line 242
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 247
    :cond_19
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 352
    :cond_c
    :goto_c
    return-void

    .line 345
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->d()Lcom/bytedance/sdk/adnet/c/a;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 347
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->d()Lcom/bytedance/sdk/adnet/c/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/adnet/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 349
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setUrl(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public c()I
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Ljava/util/Set;

    monitor-enter v1

    .line 363
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 364
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    .line 365
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/m;->j:Ljava/util/List;

    monitor-enter v1

    .line 366
    :try_start_c
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/m$b;

    .line 367
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/m$b;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    goto :goto_12

    .line 369
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0

    .line 364
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    .line 369
    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_22

    .line 370
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    .line 371
    return-void
.end method
