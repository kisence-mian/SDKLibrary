.class Lcom/sigmob/volley/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/volley/m<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/sigmob/volley/c;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/sigmob/volley/c$a;->b:Lcom/sigmob/volley/c;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/c$a;Lcom/sigmob/volley/m;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/volley/c$a;->b(Lcom/sigmob/volley/m;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Lcom/sigmob/volley/m;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/sigmob/volley/m;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v4, "waiting-for-response"

    invoke-virtual {p1, v4}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/sigmob/volley/u;->b:Z

    if-eqz p1, :cond_38

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_52

    :cond_38
    monitor-exit p0

    return v2

    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/m$a;)V

    sget-boolean p1, Lcom/sigmob/volley/u;->b:Z

    if-eqz p1, :cond_50

    const-string p1, "new request, sending to network %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit p0

    return v3

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/sigmob/volley/m;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/sigmob/volley/m;->j()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_61

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    sget-boolean v1, Lcom/sigmob/volley/u;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/m;

    iget-object v4, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/m$a;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_63

    :try_start_3d
    iget-object p1, p0, Lcom/sigmob/volley/c$a;->b:Lcom/sigmob/volley/c;

    invoke-static {p1}, Lcom/sigmob/volley/c;->a(Lcom/sigmob/volley/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_46} :catch_47
    .catchall {:try_start_3d .. :try_end_46} :catchall_63

    goto :goto_61

    :catch_47
    move-exception p1

    :try_start_48
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lcom/sigmob/volley/c$a;->b:Lcom/sigmob/volley/c;

    invoke-virtual {p1}, Lcom/sigmob/volley/c;->a()V
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_63

    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/volley/o<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/sigmob/volley/o;->b:Lcom/sigmob/volley/b$a;

    if-eqz v0, :cond_55

    iget-object v0, p2, Lcom/sigmob/volley/o;->b:Lcom/sigmob/volley/b$a;

    invoke-virtual {v0}, Lcom/sigmob/volley/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_55

    :cond_d
    invoke-virtual {p1}, Lcom/sigmob/volley/m;->j()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_12
    iget-object v0, p0, Lcom/sigmob/volley/c$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_52

    if-eqz v0, :cond_51

    sget-boolean v1, Lcom/sigmob/volley/u;->b:Z

    if-eqz v1, :cond_37

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/m;

    iget-object v1, p0, Lcom/sigmob/volley/c$a;->b:Lcom/sigmob/volley/c;

    invoke-static {v1}, Lcom/sigmob/volley/c;->b(Lcom/sigmob/volley/c;)Lcom/sigmob/volley/p;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/sigmob/volley/p;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;)V

    goto :goto_3b

    :cond_51
    return-void

    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1

    :cond_55
    :goto_55
    invoke-virtual {p0, p1}, Lcom/sigmob/volley/c$a;->a(Lcom/sigmob/volley/m;)V

    return-void
.end method
