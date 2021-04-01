.class public Lcom/kwai/filedownloader/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/h$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
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
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/h$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/h;-><init>()V

    return-void
.end method

.method public static b()Lcom/kwai/filedownloader/h;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/h$b;->a()Lcom/kwai/filedownloader/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method a(I)I
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/a$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_21
    monitor-exit v2

    return v1

    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0
.end method

.method a(Lcom/kwai/filedownloader/a$b;)V
    .registers 3

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->D()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->u()V

    :cond_d
    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->q()Lcom/kwai/filedownloader/x$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/x$a;->p()Lcom/kwai/filedownloader/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/h;->b(Lcom/kwai/filedownloader/a$b;)V

    :cond_1e
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_6b

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "remove %s left %d %d"

    invoke-static {p0, v3, v1}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    if-eqz v2, :cond_5b

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->q()Lcom/kwai/filedownloader/x$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/x$a;->p()Lcom/kwai/filedownloader/t;

    move-result-object v1

    packed-switch v0, :pswitch_data_6e

    :goto_46
    return v2

    :pswitch_47
    invoke-interface {v1, p2}, Lcom/kwai/filedownloader/t;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_46

    :pswitch_4b
    invoke-interface {v1, p2}, Lcom/kwai/filedownloader/t;->g(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_46

    :pswitch_4f
    invoke-static {p2}, Lcom/kwai/filedownloader/message/f;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/t;->f(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_46

    :pswitch_57
    invoke-interface {v1, p2}, Lcom/kwai/filedownloader/t;->c(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_46

    :cond_5b
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "remove error, not exist: %s %d"

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/h0/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    :pswitch_data_6e
    .packed-switch -0x4
        :pswitch_57
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
    .end packed-switch
.end method

.method b(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/a$b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->s()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    return-object v1
.end method

.method b(Lcom/kwai/filedownloader/a$b;)V
    .registers 7

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1f

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "already has %s"

    const/4 v2, 0x1

    :try_start_15
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    :goto_1d
    monitor-exit v1

    goto :goto_6

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->I()V

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_1f

    if-eqz v0, :cond_1d

    const-string v0, "add list in all %s %d %d"

    const/4 v2, 0x3

    :try_start_31
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->i()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_1f

    goto :goto_1d
.end method

.method c(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/a$b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/a$b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->s()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->i()B

    move-result v4

    if-eqz v4, :cond_e

    const/16 v5, 0xa

    if-eq v4, v5, :cond_e

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_38
    move-exception v0

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    return-object v1
.end method

.method c(Lcom/kwai/filedownloader/a$b;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/kwai/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
