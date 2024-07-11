.class public Lcom/kwai/filedownloader/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/h$a;
    }
.end annotation


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
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/h$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/h;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/h;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/h$a;->a()Lcom/kwai/filedownloader/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(I)I
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v3, p1}, Lcom/kwai/filedownloader/a$b;->b(I)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    monitor-exit v0

    return v2

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/a$b;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    iget-object p1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method a(Lcom/kwai/filedownloader/a$b;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 11

    invoke-virtual {p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_6b

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "remove %s left %d %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {p0, v1, v6}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    if-eqz v2, :cond_5b

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->G()Lcom/kwai/filedownloader/w$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwai/filedownloader/w$a;->d()Lcom/kwai/filedownloader/s;

    move-result-object p1

    packed-switch v0, :pswitch_data_6e

    goto :goto_6a

    :pswitch_47
    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/s;->h(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_6a

    :pswitch_4b
    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/s;->i(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_6a

    :pswitch_4f
    invoke-static {p2}, Lcom/kwai/filedownloader/message/f;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/s;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_6a

    :pswitch_57
    invoke-interface {p1, p2}, Lcom/kwai/filedownloader/s;->g(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_6a

    :cond_5b
    const-string p2, "remove error, not exist: %s %d"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p0, p2, v1}, Lcom/kwai/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6a
    return v2

    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1

    :pswitch_data_6e
    .packed-switch -0x4
        :pswitch_57
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
    .end packed-switch
.end method

.method b()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method b(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v3, p1}, Lcom/kwai/filedownloader/a$b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Lcom/kwai/filedownloader/a$b;->H()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v3}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->v()B

    move-result v4

    if-eqz v4, :cond_e

    const/16 v5, 0xa

    if-eq v4, v5, :cond_e

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_38
    monitor-exit v1

    return-object v0

    :catchall_3a
    move-exception p1

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method b(Lcom/kwai/filedownloader/a$b;)V
    .registers 3

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->d()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->J()V

    :cond_d
    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->G()Lcom/kwai/filedownloader/w$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/w$a;->d()Lcom/kwai/filedownloader/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/h;->c(Lcom/kwai/filedownloader/a$b;)V

    :cond_1e
    return-void
.end method

.method c(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v3, p1}, Lcom/kwai/filedownloader/a$b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Lcom/kwai/filedownloader/a$b;->H()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2a
    monitor-exit v1

    return-object v0

    :catchall_2c
    move-exception p1

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method c(Lcom/kwai/filedownloader/a$b;)V
    .registers 7

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->K()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    const-string v1, "already has %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v1, v3}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4f

    :cond_1e
    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->L()V

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_4f

    const-string v1, "add list in all %s %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->v()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v4, v3

    const/4 p1, 0x2

    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, p1

    invoke-static {p0, v1, v4}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_51

    throw p1
.end method
