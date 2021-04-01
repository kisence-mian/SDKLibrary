.class public Lcom/kwai/filedownloader/z;
.super Lcom/kwai/filedownloader/e;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/v;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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

    iput-object v0, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->c()Lcom/kwai/filedownloader/w;

    move-result-object v1

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "The downloader service is connected."

    invoke-static {p0, v2, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    iget-object v2, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_17
    iget-object v0, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/kwai/filedownloader/w;->b()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->K()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/kwai/filedownloader/w;->a(I)Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->n()Lcom/kwai/filedownloader/a$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$c;->a()I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :catchall_64
    move-exception v0

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_17 .. :try_end_66} :catchall_64

    throw v0

    :cond_67
    :try_start_67
    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->v()V

    goto :goto_31

    :cond_6b
    invoke-interface {v1, v3}, Lcom/kwai/filedownloader/w;->a(Ljava/util/List;)V

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_64

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/a$b;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b()V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/e;->c()Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->lost:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    if-ne v0, v1, :cond_66

    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->c()Lcom/kwai/filedownloader/w;

    move-result-object v1

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_2b

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwai/filedownloader/h;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "lost the connection to the file download service, and current active task size is %d"

    invoke-static {p0, v2, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/h;->a()I

    move-result v0

    if-lez v0, :cond_65

    iget-object v2, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_38
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    iget-object v3, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/kwai/filedownloader/h;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->g()V

    goto :goto_47

    :catchall_57
    move-exception v0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_57

    throw v0

    :cond_5a
    :try_start_5a
    invoke-interface {v1}, Lcom/kwai/filedownloader/w;->a()V

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_57

    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->a()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/h;->a()I

    move-result v0

    if-lez v0, :cond_65

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwai/filedownloader/h;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "file download service has be unbound but the size of active tasks are not empty %d "

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65
.end method

.method public b(Lcom/kwai/filedownloader/a$b;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwai/filedownloader/q;->d()Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_f
    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwai/filedownloader/q;->d()Z

    move-result v3

    if-nez v3, :cond_51

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_57

    if-eqz v1, :cond_34

    const-string v1, "Waiting for connecting with the downloader service... %d"

    const/4 v3, 0x1

    :try_start_20
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v1, v3}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v1

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kwai/filedownloader/m;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->g()V

    iget-object v1, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    monitor-exit v2

    :goto_50
    return v0

    :cond_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_57

    :cond_52
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/z;->c(Lcom/kwai/filedownloader/a$b;)V

    move v0, v1

    goto :goto_50

    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public c(Lcom/kwai/filedownloader/a$b;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v1, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/kwai/filedownloader/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method
