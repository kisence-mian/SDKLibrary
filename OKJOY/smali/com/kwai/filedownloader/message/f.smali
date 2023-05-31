.class public Lcom/kwai/filedownloader/message/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BLcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/download/d$a;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 10

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    const/4 v0, -0x4

    if-eq p0, v0, :cond_14f

    packed-switch p0, :pswitch_data_164

    :pswitch_d
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    invoke-static {v2, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v5

    const-class v3, Lcom/kwai/filedownloader/message/f;

    const-string v4, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    invoke-static {v3, v4, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_13b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3d
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->n()Z

    move-result v2

    if-eqz v2, :cond_142

    new-instance v2, Lcom/kwai/filedownloader/message/d$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5, v0}, Lcom/kwai/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    move-object v0, v2

    :goto_4d
    return-object v0

    :pswitch_4e
    new-instance v0, Lcom/kwai/filedownloader/message/MessageSnapshot$c;

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/message/MessageSnapshot$c;-><init>(I)V

    goto :goto_4d

    :pswitch_54
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Lcom/kwai/filedownloader/message/d$h;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$h;-><init>(IJLjava/lang/Throwable;I)V

    goto :goto_4d

    :cond_6c
    new-instance v0, Lcom/kwai/filedownloader/message/h$h;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwai/filedownloader/message/h$h;-><init>(IILjava/lang/Throwable;I)V

    goto :goto_4d

    :pswitch_7f
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_8f

    new-instance v0, Lcom/kwai/filedownloader/message/d$g;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/kwai/filedownloader/message/d$g;-><init>(IJ)V

    goto :goto_4d

    :cond_8f
    new-instance v0, Lcom/kwai/filedownloader/message/h$g;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/kwai/filedownloader/message/h$g;-><init>(II)V

    goto :goto_4d

    :pswitch_9a
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->o()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->d()Ljava/lang/String;

    move-result-object v6

    :goto_a4
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_be

    new-instance v0, Lcom/kwai/filedownloader/message/d$c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->c()Z

    move-result v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/kwai/filedownloader/message/d$c;-><init>(IZJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_bc
    const/4 v6, 0x0

    goto :goto_a4

    :cond_be
    new-instance v0, Lcom/kwai/filedownloader/message/h$c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->c()Z

    move-result v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/h$c;-><init>(IZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    :pswitch_d3
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_e8

    new-instance v0, Lcom/kwai/filedownloader/message/d$f;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$f;-><init>(IJJ)V

    goto/16 :goto_4d

    :cond_e8
    new-instance v0, Lcom/kwai/filedownloader/message/h$f;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/kwai/filedownloader/message/h$f;-><init>(III)V

    goto/16 :goto_4d

    :pswitch_f9
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_10e

    new-instance v0, Lcom/kwai/filedownloader/message/d$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwai/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    goto/16 :goto_4d

    :cond_10e
    new-instance v0, Lcom/kwai/filedownloader/message/h$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kwai/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    goto/16 :goto_4d

    :pswitch_11e
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->n()Z

    move-result v0

    if-eqz v0, :cond_12f

    new-instance v0, Lcom/kwai/filedownloader/message/d$b;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kwai/filedownloader/message/d$b;-><init>(IZJ)V

    goto/16 :goto_4d

    :cond_12f
    new-instance v0, Lcom/kwai/filedownloader/message/h$b;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v4, v2}, Lcom/kwai/filedownloader/message/h$b;-><init>(IZI)V

    goto/16 :goto_4d

    :cond_13b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_142
    new-instance v2, Lcom/kwai/filedownloader/message/h$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v2, v1, v3, v0}, Lcom/kwai/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    move-object v0, v2

    goto/16 :goto_4d

    :cond_14f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "please use #catchWarn instead %d"

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_164
    .packed-switch -0x3
        :pswitch_11e
        :pswitch_d
        :pswitch_f9
        :pswitch_d
        :pswitch_d3
        :pswitch_9a
        :pswitch_7f
        :pswitch_d
        :pswitch_54
        :pswitch_4e
    .end packed-switch
.end method

.method public static a(IJJZ)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 13

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_1b

    if-eqz p5, :cond_12

    new-instance v0, Lcom/kwai/filedownloader/message/d$i;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$i;-><init>(IJJ)V

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/kwai/filedownloader/message/d$j;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$j;-><init>(IJJ)V

    goto :goto_11

    :cond_1b
    if-eqz p5, :cond_25

    new-instance v0, Lcom/kwai/filedownloader/message/h$i;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-direct {v0, p0, v1, v2}, Lcom/kwai/filedownloader/message/h$i;-><init>(III)V

    goto :goto_11

    :cond_25
    new-instance v0, Lcom/kwai/filedownloader/message/h$j;

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-direct {v0, p0, v1, v2}, Lcom/kwai/filedownloader/message/h$j;-><init>(III)V

    goto :goto_11
.end method

.method public static a(IJLjava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 7

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    new-instance v0, Lcom/kwai/filedownloader/message/d$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kwai/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/kwai/filedownloader/message/h$d;

    long-to-int v1, p1

    invoke-direct {v0, p0, v1, p3}, Lcom/kwai/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    goto :goto_c
.end method

.method public static a(ILjava/io/File;Z)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_1a

    if-eqz p2, :cond_14

    new-instance v0, Lcom/kwai/filedownloader/message/d$a;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/kwai/filedownloader/message/d$a;-><init>(IZJ)V

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/kwai/filedownloader/message/d$b;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/kwai/filedownloader/message/d$b;-><init>(IZJ)V

    goto :goto_13

    :cond_1a
    if-eqz p2, :cond_23

    new-instance v0, Lcom/kwai/filedownloader/message/h$a;

    long-to-int v1, v2

    invoke-direct {v0, p0, v4, v1}, Lcom/kwai/filedownloader/message/h$a;-><init>(IZI)V

    goto :goto_13

    :cond_23
    new-instance v0, Lcom/kwai/filedownloader/message/h$b;

    long-to-int v1, v2

    invoke-direct {v0, p0, v4, v1}, Lcom/kwai/filedownloader/message/h$b;-><init>(IZI)V

    goto :goto_13
.end method

.method public static a(Lcom/kwai/filedownloader/a;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 7

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/kwai/filedownloader/message/d$e;

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v1

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->C()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->o()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$e;-><init>(IJJ)V

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/kwai/filedownloader/message/h$e;

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v1

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->H()I

    move-result v2

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->r()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kwai/filedownloader/message/h$e;-><init>(III)V

    goto :goto_17
.end method

.method public static a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_d

    new-instance v0, Lcom/kwai/filedownloader/message/a$a;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/message/a$a;-><init>(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "take block completed snapshot, must has already be completed. %d %d"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
