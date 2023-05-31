.class public Lcom/kwai/filedownloader/event/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/event/c;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kwai/filedownloader/event/d;",
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

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/h0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/event/a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/util/LinkedList;Lcom/kwai/filedownloader/event/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kwai/filedownloader/event/d;",
            ">;",
            "Lcom/kwai/filedownloader/event/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_19

    aget-object v0, v2, v1

    if-nez v0, :cond_11

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_11
    check-cast v0, Lcom/kwai/filedownloader/event/d;

    invoke-virtual {v0, p2}, Lcom/kwai/filedownloader/event/d;->a(Lcom/kwai/filedownloader/event/b;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_19
    iget-object v0, p2, Lcom/kwai/filedownloader/event/b;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_20
    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/event/b;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/event/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "asyncPublishInNewThread %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/kwai/filedownloader/event/a$a;

    invoke-direct {v1, p0, p1}, Lcom/kwai/filedownloader/event/a$a;-><init>(Lcom/kwai/filedownloader/event/a;Lcom/kwai/filedownloader/event/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/kwai/filedownloader/event/d;)Z
    .registers 6

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "setListener %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    if-eqz p2, :cond_46

    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_20
    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_34

    iget-object v2, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_40

    :cond_35
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_3a
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_43

    return v0

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/kwai/filedownloader/event/b;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_13

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/event/b;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "publish %s"

    invoke-static {p0, v3, v0}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Lcom/kwai/filedownloader/event/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_45

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    monitor-enter v4

    :try_start_28
    iget-object v0, p0, Lcom/kwai/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_44

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_4a

    if-eqz v0, :cond_41

    const-string v0, "No listener for this event %s"

    const/4 v2, 0x1

    :try_start_39
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    monitor-exit v4

    move v0, v1

    :goto_43
    return v0

    :cond_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_4a

    :cond_45
    invoke-direct {p0, v0, p1}, Lcom/kwai/filedownloader/event/a;->a(Ljava/util/LinkedList;Lcom/kwai/filedownloader/event/b;)V

    move v0, v2

    goto :goto_43

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
