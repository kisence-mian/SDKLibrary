.class Lcom/kwai/filedownloader/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/t;


# instance fields
.field private a:Lcom/kwai/filedownloader/a$b;

.field private b:Lcom/kwai/filedownloader/a$d;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/kwai/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/k;->d:Z

    invoke-direct {p0, p1, p2}, Lcom/kwai/filedownloader/k;->b(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    return-void
.end method

.method private a(I)V
    .registers 6

    invoke-static {p1}, Lcom/kwai/filedownloader/f0/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/message/MessageSnapshot;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    :cond_47
    return-void
.end method

.method private b(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    iput-object p2, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    return-void
.end method

.method private k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v0, :cond_27

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-boolean v1, p0, Lcom/kwai/filedownloader/k;->d:Z

    if-nez v1, :cond_35

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->E()Lcom/kwai/filedownloader/i;

    move-result-object v0

    if-nez v0, :cond_57

    :cond_35
    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_43
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->n()V

    :cond_4f
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/k;->a(I)V

    goto :goto_26

    :cond_57
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/kwai/filedownloader/j;->a()Lcom/kwai/filedownloader/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/j;->a(Lcom/kwai/filedownloader/t;)V

    goto :goto_26
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/k;->d:Z

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/kwai/filedownloader/k;->b(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "the messenger is working, can\'t re-appointment for %s"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "notify started %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->o()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "notify pending %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->o()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->J()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "notify warn %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->n()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public c()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_11

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v3, v2, v0

    const-string v3, "notify begin %s"

    invoke-static {p0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v2, :cond_29

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "can\'t begin the task, the holder fo the messenger is nil, %d"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_28
    return v0

    :cond_29
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->m()V

    move v0, v1

    goto :goto_28
.end method

.method public d()V
    .registers 9

    iget-boolean v0, p0, Lcom/kwai/filedownloader/k;->d:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kwai/filedownloader/message/MessageSnapshot;

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v2

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->E()Lcom/kwai/filedownloader/i;

    move-result-object v7

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->q()Lcom/kwai/filedownloader/x$a;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/kwai/filedownloader/k;->a(I)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/kwai/filedownloader/i;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    if-ne v2, v0, :cond_46

    :try_start_30
    invoke-virtual {v7, v1}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;)V

    check-cast v6, Lcom/kwai/filedownloader/message/a;

    invoke-interface {v6}, Lcom/kwai/filedownloader/message/a;->b()Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/k;->j(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3d

    goto :goto_4

    :catchall_3d
    move-exception v0

    invoke-interface {v3, v0}, Lcom/kwai/filedownloader/x$a;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/k;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_4

    :cond_46
    const/4 v0, 0x0

    instance-of v3, v7, Lcom/kwai/filedownloader/g;

    if-eqz v3, :cond_4e

    move-object v0, v7

    check-cast v0, Lcom/kwai/filedownloader/g;

    :cond_4e
    packed-switch v2, :pswitch_data_10c

    :pswitch_51
    goto :goto_4

    :pswitch_52
    invoke-virtual {v7, v1}, Lcom/kwai/filedownloader/i;->d(Lcom/kwai/filedownloader/a;)V

    goto :goto_4

    :pswitch_56
    invoke-virtual {v7, v1}, Lcom/kwai/filedownloader/i;->c(Lcom/kwai/filedownloader/a;)V

    goto :goto_4

    :pswitch_5a
    if-eqz v0, :cond_6c

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->l()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->h()I

    move-result v3

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/g;->a(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;IJ)V

    goto :goto_4

    :cond_6c
    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->l()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->h()I

    move-result v2

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()I

    move-result v3

    invoke-virtual {v7, v1, v0, v2, v3}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;II)V

    goto :goto_4

    :pswitch_7c
    if-eqz v0, :cond_8b

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->o()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/g;->c(Lcom/kwai/filedownloader/a;JJ)V

    goto/16 :goto_4

    :cond_8b
    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()I

    move-result v0

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->r()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/kwai/filedownloader/i;->c(Lcom/kwai/filedownloader/a;II)V

    goto/16 :goto_4

    :pswitch_98
    if-eqz v0, :cond_af

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->n()Z

    move-result v3

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->C()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/kwai/filedownloader/g;->a(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZJJ)V

    goto/16 :goto_4

    :cond_af
    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->n()Z

    move-result v3

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->H()I

    move-result v4

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()I

    move-result v5

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V

    goto/16 :goto_4

    :pswitch_c5
    if-eqz v0, :cond_d4

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/g;->b(Lcom/kwai/filedownloader/a;JJ)V

    goto/16 :goto_4

    :cond_d4
    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()I

    move-result v0

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/kwai/filedownloader/i;->b(Lcom/kwai/filedownloader/a;II)V

    goto/16 :goto_4

    :pswitch_e1
    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->l()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :pswitch_ea
    if-eqz v0, :cond_f9

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/g;->a(Lcom/kwai/filedownloader/a;JJ)V

    goto/16 :goto_4

    :cond_f9
    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()I

    move-result v0

    invoke-virtual {v6}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;II)V

    goto/16 :goto_4

    :pswitch_106
    invoke-virtual {v7, v1}, Lcom/kwai/filedownloader/i;->b(Lcom/kwai/filedownloader/a;)V

    goto/16 :goto_4

    nop

    :pswitch_data_10c
    .packed-switch -0x4
        :pswitch_52
        :pswitch_106
        :pswitch_ea
        :pswitch_e1
        :pswitch_51
        :pswitch_c5
        :pswitch_98
        :pswitch_7c
        :pswitch_51
        :pswitch_5a
        :pswitch_56
    .end packed-switch
.end method

.method public d(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "notify connected %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->o()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->c()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "notify error %s %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->n()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public f(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "notify block completed %s %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->o()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public g(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "notify paused %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->n()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public h(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "notify progress %s %d %d"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->y()I

    move-result v0

    if-gtz v0, :cond_41

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_40

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v1, v0, v4

    const-string v1, "notify progress but client not request notify %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->o()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_40
.end method

.method public i(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 6

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->A()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->c()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "notify retry %s %d %d %s"

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->o()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public j(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "notify completed %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->n()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v1, "%d:%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v0, :cond_1d

    const/4 v0, -0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v0

    goto :goto_b
.end method
