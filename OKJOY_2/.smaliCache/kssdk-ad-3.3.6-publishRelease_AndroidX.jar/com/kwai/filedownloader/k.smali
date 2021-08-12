.class Lcom/kwai/filedownloader/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/s;


# instance fields
.field private a:Lcom/kwai/filedownloader/a$b;

.field private b:Lcom/kwai/filedownloader/a$d;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
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
    .registers 5

    invoke-static {p1}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwai/filedownloader/message/MessageSnapshot;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    :cond_47
    return-void
.end method

.method private b(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V
    .registers 3

    iput-object p1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    iput-object p2, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    return-void
.end method

.method private k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v0, :cond_27

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    return-void

    :cond_27
    iget-boolean v1, p0, Lcom/kwai/filedownloader/k;->d:Z

    if-nez v1, :cond_43

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->p()Lcom/kwai/filedownloader/i;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_43

    :cond_36
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/kwai/filedownloader/j;->a()Lcom/kwai/filedownloader/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/kwai/filedownloader/j;->a(Lcom/kwai/filedownloader/s;)V

    goto :goto_64

    :cond_43
    :goto_43
    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->O()Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_51
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->c()V

    :cond_5d
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->a(I)V

    :goto_64
    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/kwai/filedownloader/k;->b(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    return-void

    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "the messenger is working, can\'t re-appointment for %s"

    invoke-static {p1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify pending %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->b_()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public a()Z
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v3, v0, v1

    const-string v3, "notify begin %s"

    invoke-static {p0, v3, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v0, :cond_29

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "can\'t begin the task, the holder fo the messenger is nil, %d"

    invoke-static {p0, v2, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_29
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->a()V

    return v2
.end method

.method public b()V
    .registers 12

    iget-boolean v0, p0, Lcom/kwai/filedownloader/k;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v2, :cond_16

    return-void

    :cond_16
    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->p()Lcom/kwai/filedownloader/i;

    move-result-object v3

    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->G()Lcom/kwai/filedownloader/w$a;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/kwai/filedownloader/k;->a(I)V

    if-eqz v3, :cond_106

    invoke-virtual {v3}, Lcom/kwai/filedownloader/i;->a()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto/16 :goto_106

    :cond_2f
    const/4 v5, 0x4

    if-ne v1, v5, :cond_4a

    :try_start_32
    invoke-virtual {v3, v4}, Lcom/kwai/filedownloader/i;->b(Lcom/kwai/filedownloader/a;)V

    check-cast v0, Lcom/kwai/filedownloader/message/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/message/a;->c_()Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/k;->j(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_40

    goto/16 :goto_106

    :catchall_40
    move-exception v0

    invoke-interface {v2, v0}, Lcom/kwai/filedownloader/w$a;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/k;->h(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_106

    :cond_4a
    const/4 v2, 0x0

    instance-of v5, v3, Lcom/kwai/filedownloader/g;

    if-eqz v5, :cond_52

    move-object v2, v3

    check-cast v2, Lcom/kwai/filedownloader/g;

    :cond_52
    packed-switch v1, :pswitch_data_108

    :pswitch_55
    goto/16 :goto_106

    :pswitch_57
    invoke-virtual {v3, v4}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;)V

    goto/16 :goto_106

    :pswitch_5c
    if-eqz v2, :cond_70

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()I

    move-result v6

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v7

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/kwai/filedownloader/g;->a(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;IJ)V

    goto/16 :goto_106

    :cond_70
    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()I

    move-result v2

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;II)V

    goto/16 :goto_106

    :pswitch_81
    if-eqz v2, :cond_91

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v5

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->t()J

    move-result-wide v7

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/kwai/filedownloader/g;->b(Lcom/kwai/filedownloader/a;JJ)V

    goto/16 :goto_106

    :cond_91
    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->a()I

    move-result v0

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->s()I

    move-result v1

    invoke-virtual {v3, v4, v0, v1}, Lcom/kwai/filedownloader/i;->b(Lcom/kwai/filedownloader/a;II)V

    goto/16 :goto_106

    :pswitch_9e
    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()Z

    move-result v6

    if-eqz v2, :cond_b5

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->r()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v9

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Lcom/kwai/filedownloader/g;->a(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZJJ)V

    goto :goto_106

    :cond_b5
    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->q()I

    move-result v7

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->c()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V

    goto :goto_106

    :pswitch_c1
    if-eqz v2, :cond_d0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v7

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/kwai/filedownloader/g;->a(Lcom/kwai/filedownloader/a;JJ)V

    goto :goto_106

    :cond_d0
    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->c()I

    move-result v0

    invoke-virtual {v3, v4, v1, v0}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;II)V

    goto :goto_106

    :pswitch_dc
    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/kwai/filedownloader/i;->a(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V

    goto :goto_106

    :pswitch_e4
    if-eqz v2, :cond_f3

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v7

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/kwai/filedownloader/g;->c(Lcom/kwai/filedownloader/a;JJ)V

    goto :goto_106

    :cond_f3
    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->c()I

    move-result v0

    invoke-virtual {v3, v4, v1, v0}, Lcom/kwai/filedownloader/i;->c(Lcom/kwai/filedownloader/a;II)V

    goto :goto_106

    :pswitch_ff
    invoke-virtual {v3, v4}, Lcom/kwai/filedownloader/i;->c(Lcom/kwai/filedownloader/a;)V

    goto :goto_106

    :pswitch_103
    invoke-virtual {v3, v4}, Lcom/kwai/filedownloader/i;->d(Lcom/kwai/filedownloader/a;)V

    :cond_106
    :goto_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch -0x4
        :pswitch_103
        :pswitch_ff
        :pswitch_e4
        :pswitch_dc
        :pswitch_55
        :pswitch_c1
        :pswitch_9e
        :pswitch_81
        :pswitch_55
        :pswitch_5c
        :pswitch_57
    .end packed-switch
.end method

.method public b(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify started %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->b_()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public c(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify connected %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->b_()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->C()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 9

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->r()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->t()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "notify progress %s %d %d"

    invoke-static {p0, v4, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->j()I

    move-result v0

    if-gtz v0, :cond_41

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz p1, :cond_40

    new-array p1, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v0, p1, v3

    const-string v0, "notify progress but client not request notify %s"

    invoke-static {p0, v0, p1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_40
    return-void

    :cond_41
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->b_()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/k;->d:Z

    return-void
.end method

.method public e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "notify block completed %s %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->b_()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public f(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 6

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->A()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->B()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->y()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "notify retry %s %d %d %s"

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->b_()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public g(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify warn %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public h(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->y()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "notify error %s %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public i(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify paused %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public j(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify completed %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/k;->b:Lcom/kwai/filedownloader/a$d;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$d;->c()V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/k;->k(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/k;->a:Lcom/kwai/filedownloader/a$b;

    if-nez v1, :cond_9

    const/4 v1, -0x1

    goto :goto_11

    :cond_9
    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->h()I

    move-result v1

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d:%s"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
