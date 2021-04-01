.class public Lcom/kwai/filedownloader/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/message/e$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;",
            "Lcom/kwai/filedownloader/message/MessageSnapshot;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2b

    invoke-virtual {p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    const/4 v3, -0x3

    if-ne v0, v3, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->q()Lcom/kwai/filedownloader/x$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kwai/filedownloader/x$a;->c(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->q()Lcom/kwai/filedownloader/x$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kwai/filedownloader/x$a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    goto :goto_2a

    :cond_47
    invoke-virtual {p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    const/4 v3, -0x4

    if-ne v3, v0, :cond_6a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->q()Lcom/kwai/filedownloader/x$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kwai/filedownloader/x$a;->d(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_52

    move v0, v1

    goto :goto_2a

    :cond_6a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_7f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->q()Lcom/kwai/filedownloader/x$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kwai/filedownloader/x$a;->b(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v0

    goto :goto_2a

    :cond_7f
    move v0, v2

    goto :goto_2a
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 9

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/h;->c(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    sget-boolean v3, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_c2

    if-eqz v3, :cond_62

    const-string v3, "~~~callback %s old[%s] new[%s] %d"

    const/4 v4, 0x4

    :try_start_31
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->i()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p0, v3, v4}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_62
    invoke-direct {p0, v2, p1}, Lcom/kwai/filedownloader/a0;->a(Ljava/util/List;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v0

    if-nez v0, :cond_cf

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The event isn\'t consumed, id:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " status:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " task-count:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->i()B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a4

    :catchall_c2
    move-exception v0

    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_31 .. :try_end_c4} :catchall_c2

    throw v0

    :cond_c5
    :try_start_c5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/h0/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_cf
    :goto_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_c2

    return-void

    :cond_d1
    const-string v0, "Receive the event %d, but there isn\'t any running task in the upper layer"

    const/4 v2, 0x1

    :try_start_d4
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/h0/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_c2

    goto :goto_cf
.end method
