.class public Lcom/kwai/filedownloader/y;
.super Lcom/kwai/filedownloader/e;

# interfaces
.implements Lcom/kwai/filedownloader/u;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->d()Lcom/kwai/filedownloader/v;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_14

    const-string v1, "The downloader service is connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    iget-object v1, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_17
    iget-object v2, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/kwai/filedownloader/v;->b()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v4}, Lcom/kwai/filedownloader/a$b;->I()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/kwai/filedownloader/v;->a(I)Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v4}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->a()Lcom/kwai/filedownloader/a$c;

    move-result-object v4

    invoke-interface {v4}, Lcom/kwai/filedownloader/a$c;->a()I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_64
    invoke-interface {v4}, Lcom/kwai/filedownloader/a$b;->N()V

    goto :goto_31

    :cond_68
    invoke-interface {v0, v3}, Lcom/kwai/filedownloader/v;->a(Ljava/util/List;)V

    monitor-exit v1

    return-void

    :catchall_6d
    move-exception v0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_17 .. :try_end_6f} :catchall_6d

    throw v0
.end method

.method public a(Lcom/kwai/filedownloader/a$b;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public b()V
    .registers 6

    invoke-virtual {p0}, Lcom/kwai/filedownloader/y;->c()Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->lost:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_66

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->d()Lcom/kwai/filedownloader/v;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_2b

    const-string v1, "lost the connection to the file download service, and current active task size is %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwai/filedownloader/h;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p0, v1, v3}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwai/filedownloader/h;->b()I

    move-result v1

    if-lez v1, :cond_85

    iget-object v1, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_38
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    iget-object v3, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/h;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v3}, Lcom/kwai/filedownloader/a$b;->M()V

    goto :goto_47

    :cond_57
    invoke-interface {v0}, Lcom/kwai/filedownloader/v;->a()V

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_63

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->b()V

    goto :goto_85

    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    :cond_66
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/h;->b()I

    move-result v0

    if-lez v0, :cond_85

    const-string v0, "file download service has be unbound but the size of active tasks are not empty %d "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwai/filedownloader/h;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_85
    :goto_85
    return-void
.end method

.method public b(Lcom/kwai/filedownloader/a$b;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p1

    :cond_15
    :goto_15
    return-void
.end method

.method public c(Lcom/kwai/filedownloader/a$b;)Z
    .registers 8

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwai/filedownloader/q;->c()Z

    move-result v2

    if-nez v2, :cond_4f

    sget-boolean v2, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_32

    const-string v2, "Waiting for connecting with the downloader service... %d"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/kwai/filedownloader/a;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p0, v2, v4}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v1

    invoke-static {}, Lcom/kwai/filedownloader/f/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/m;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->M()V

    iget-object v1, p0, Lcom/kwai/filedownloader/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    monitor-exit v0

    return v3

    :cond_4f
    monitor-exit v0

    goto :goto_54

    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_51

    throw p1

    :cond_54
    :goto_54
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/y;->b(Lcom/kwai/filedownloader/a$b;)V

    return v1
.end method
