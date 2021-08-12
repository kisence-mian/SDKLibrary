.class public Lcom/kwai/filedownloader/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/message/e$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;",
            "Lcom/kwai/filedownloader/message/MessageSnapshot;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_29

    invoke-virtual {p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_29

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->G()Lcom/kwai/filedownloader/w$a;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/kwai/filedownloader/w$a;->c(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->G()Lcom/kwai/filedownloader/w$a;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/kwai/filedownloader/w$a;->b(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_2d

    return v1

    :cond_44
    const/4 v0, -0x4

    invoke-virtual {p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v2

    if-ne v0, v2, :cond_66

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->G()Lcom/kwai/filedownloader/w$a;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/kwai/filedownloader/w$a;->d(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_4f

    return v1

    :cond_66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwai/filedownloader/a$b;

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->G()Lcom/kwai/filedownloader/w$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/w$a;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result p1

    return p1

    :cond_7c
    return v2
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 10

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/h;->b(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_cb

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v2

    sget-boolean v5, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v5, :cond_61

    const-string v5, "~~~callback %s old[%s] new[%s] %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->v()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p0, v5, v6}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    invoke-direct {p0, v1, p1}, Lcom/kwai/filedownloader/z;->a(Ljava/util/List;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move-result v2

    if-nez v2, :cond_dc

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The event isn\'t consumed, id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " status:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " task-count:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/a$b;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->v()B

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a3

    :cond_c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/kwai/filedownloader/f/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_dc

    :cond_cb
    const-string v1, "Receive the event %d, but there isn\'t any running task in the upper layer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/f/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_dc
    :goto_dc
    monitor-exit v0

    return-void

    :catchall_de
    move-exception p1

    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_d .. :try_end_e0} :catchall_de

    throw p1
.end method
