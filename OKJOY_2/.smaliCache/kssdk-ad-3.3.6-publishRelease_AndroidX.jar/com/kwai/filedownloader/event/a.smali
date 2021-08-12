.class public Lcom/kwai/filedownloader/event/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/kwai/filedownloader/event/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    const-string v1, "EventPool"

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/f/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/event/a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/util/LinkedList;Lcom/kwai/filedownloader/event/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/kwai/filedownloader/event/c;",
            ">;",
            "Lcom/kwai/filedownloader/event/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    if-nez v2, :cond_d

    goto :goto_16

    :cond_d
    check-cast v2, Lcom/kwai/filedownloader/event/c;

    invoke-virtual {v2, p2}, Lcom/kwai/filedownloader/event/c;->a(Lcom/kwai/filedownloader/event/b;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_19

    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    :goto_19
    iget-object p1, p2, Lcom/kwai/filedownloader/event/b;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_22

    iget-object p1, p2, Lcom/kwai/filedownloader/event/b;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_22
    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/event/b;)Z
    .registers 7

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const-string v0, "publish %s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/event/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/kwai/filedownloader/event/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_46

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    monitor-enter v4

    :try_start_28
    iget-object v3, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_41

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz p1, :cond_3f

    const-string p1, "No listener for this event %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, p1, v2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    monitor-exit v4

    return v1

    :cond_41
    monitor-exit v4

    goto :goto_46

    :catchall_43
    move-exception p1

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_43

    throw p1

    :cond_46
    :goto_46
    invoke-direct {p0, v3, p1}, Lcom/kwai/filedownloader/event/a;->a(Ljava/util/LinkedList;Lcom/kwai/filedownloader/event/b;)V

    return v2

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/kwai/filedownloader/event/c;)Z
    .registers 6

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_f

    const-string v0, "setListener %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    if-eqz p2, :cond_48

    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_20
    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_35
    monitor-exit v1

    goto :goto_3a

    :catchall_37
    move-exception p1

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_37

    throw p1

    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    :try_start_3f
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p2

    monitor-exit p1

    return p2

    :catchall_45
    move-exception p2

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_45

    throw p2

    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/kwai/filedownloader/event/b;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/event/b;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "asyncPublishInNewThread %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/kwai/filedownloader/event/a$1;

    invoke-direct {v1, p0, p1}, Lcom/kwai/filedownloader/event/a$1;-><init>(Lcom/kwai/filedownloader/event/a;Lcom/kwai/filedownloader/event/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
