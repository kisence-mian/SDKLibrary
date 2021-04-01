.class Lcom/sigmob/volley/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/s;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/sigmob/volley/d;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/sigmob/volley/e;->b:Lcom/sigmob/volley/d;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/e;Lcom/sigmob/volley/q;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/volley/e;->b(Lcom/sigmob/volley/q;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Lcom/sigmob/volley/q;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Lcom/sigmob/volley/q;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v0, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v3, "waiting-for-response"

    invoke-virtual {p1, v3}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/sigmob/volley/af;->b:Z

    if-eqz v0, :cond_3a

    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_56

    :cond_3a
    move v0, v1

    :cond_3b
    :goto_3b
    monitor-exit p0

    return v0

    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/s;)V

    sget-boolean v1, Lcom/sigmob/volley/af;->b:Z

    if-eqz v1, :cond_3b

    const-string v1, "new request, sending to network %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_56

    goto :goto_3b

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/sigmob/volley/q;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/sigmob/volley/q;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_47

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    sget-boolean v1, Lcom/sigmob/volley/af;->b:Z

    if-eqz v1, :cond_2f

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/q;

    iget-object v3, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/s;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_66

    :try_start_3e
    iget-object v0, p0, Lcom/sigmob/volley/e;->b:Lcom/sigmob/volley/d;

    invoke-static {v0}, Lcom/sigmob/volley/d;->a(Lcom/sigmob/volley/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_47} :catch_49
    .catchall {:try_start_3e .. :try_end_47} :catchall_66

    :cond_47
    :goto_47
    monitor-exit p0

    return-void

    :catch_49
    move-exception v0

    :try_start_4a
    const-string v1, "Couldn\'t add request to queue. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/sigmob/volley/e;->b:Lcom/sigmob/volley/d;

    invoke-virtual {v0}, Lcom/sigmob/volley/d;->a()V
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_66

    goto :goto_47

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/volley/x",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/sigmob/volley/x;->b:Lcom/sigmob/volley/c;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/sigmob/volley/x;->b:Lcom/sigmob/volley/c;

    invoke-virtual {v0}, Lcom/sigmob/volley/c;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    invoke-virtual {p0, p1}, Lcom/sigmob/volley/e;->a(Lcom/sigmob/volley/q;)V

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/sigmob/volley/q;->o()Ljava/lang/String;

    move-result-object v1

    monitor-enter p0

    :try_start_15
    iget-object v0, p0, Lcom/sigmob/volley/e;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_54

    if-eqz v0, :cond_f

    sget-boolean v2, Lcom/sigmob/volley/af;->b:Z

    if-eqz v2, :cond_3a

    const-string v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/q;

    iget-object v2, p0, Lcom/sigmob/volley/e;->b:Lcom/sigmob/volley/d;

    invoke-static {v2}, Lcom/sigmob/volley/d;->b(Lcom/sigmob/volley/d;)Lcom/sigmob/volley/aa;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Lcom/sigmob/volley/aa;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;)V

    goto :goto_3e

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method
