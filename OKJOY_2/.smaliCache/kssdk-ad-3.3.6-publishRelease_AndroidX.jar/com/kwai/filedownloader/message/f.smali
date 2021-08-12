.class public Lcom/kwai/filedownloader/message/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BLcom/kwai/filedownloader/d/c;Lcom/kwai/filedownloader/download/d$a;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 11

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x4

    if-eq p0, v3, :cond_153

    packed-switch p0, :pswitch_data_168

    :pswitch_c
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    invoke-static {v5, v4}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/kwai/filedownloader/message/f;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {v6, v5, v3}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_132

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, v4, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_137

    :pswitch_3d
    new-instance p0, Lcom/kwai/filedownloader/message/MessageSnapshot$b;

    invoke-direct {p0, v1}, Lcom/kwai/filedownloader/message/MessageSnapshot$b;-><init>(I)V

    goto/16 :goto_152

    :pswitch_44
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->q()Z

    move-result p0

    if-eqz p0, :cond_5e

    new-instance p0, Lcom/kwai/filedownloader/message/d$h;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->c()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$h;-><init>(IJLjava/lang/Throwable;I)V

    goto/16 :goto_152

    :cond_5e
    new-instance p0, Lcom/kwai/filedownloader/message/h$h;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->c()I

    move-result p2

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/kwai/filedownloader/message/h$h;-><init>(IILjava/lang/Throwable;I)V

    goto/16 :goto_152

    :pswitch_72
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->q()Z

    move-result p0

    if-eqz p0, :cond_83

    new-instance p0, Lcom/kwai/filedownloader/message/d$g;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide p1

    invoke-direct {p0, v1, p1, p2}, Lcom/kwai/filedownloader/message/d$g;-><init>(IJ)V

    goto/16 :goto_152

    :cond_83
    new-instance p0, Lcom/kwai/filedownloader/message/h$g;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/kwai/filedownloader/message/h$g;-><init>(II)V

    goto/16 :goto_152

    :pswitch_8f
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->l()Z

    move-result p0

    if-eqz p0, :cond_9a

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->m()Ljava/lang/String;

    move-result-object p0

    goto :goto_9b

    :cond_9a
    const/4 p0, 0x0

    :goto_9b
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->q()Z

    move-result v0

    if-eqz v0, :cond_b7

    new-instance v7, Lcom/kwai/filedownloader/message/d$c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Z

    move-result v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/kwai/filedownloader/message/d$c;-><init>(IZJLjava/lang/String;Ljava/lang/String;)V

    move-object p0, v7

    goto/16 :goto_152

    :cond_b7
    new-instance v6, Lcom/kwai/filedownloader/message/h$c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->a()Z

    move-result v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/h$c;-><init>(IZILjava/lang/String;Ljava/lang/String;)V

    move-object p0, v6

    goto/16 :goto_152

    :pswitch_ce
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->q()Z

    move-result p0

    if-eqz p0, :cond_e4

    new-instance p0, Lcom/kwai/filedownloader/message/d$f;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$f;-><init>(IJJ)V

    goto/16 :goto_152

    :cond_e4
    new-instance p0, Lcom/kwai/filedownloader/message/h$f;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, v1, p2, p1}, Lcom/kwai/filedownloader/message/h$f;-><init>(III)V

    goto :goto_152

    :pswitch_f4
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->q()Z

    move-result p0

    if-eqz p0, :cond_108

    new-instance p0, Lcom/kwai/filedownloader/message/d$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/kwai/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    goto :goto_152

    :cond_108
    new-instance p0, Lcom/kwai/filedownloader/message/h$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/d$a;->b()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/kwai/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    goto :goto_152

    :pswitch_117
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->q()Z

    move-result p0

    if-eqz p0, :cond_127

    new-instance p0, Lcom/kwai/filedownloader/message/d$b;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide p1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/kwai/filedownloader/message/d$b;-><init>(IZJ)V

    goto :goto_152

    :cond_127
    new-instance p0, Lcom/kwai/filedownloader/message/h$b;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, v1, v2, p1}, Lcom/kwai/filedownloader/message/h$b;-><init>(IZI)V

    goto :goto_152

    :cond_132
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_137
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->q()Z

    move-result p2

    if-eqz p2, :cond_147

    new-instance p2, Lcom/kwai/filedownloader/message/d$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    invoke-direct {p2, v1, v2, v3, p0}, Lcom/kwai/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    goto :goto_151

    :cond_147
    new-instance p2, Lcom/kwai/filedownloader/message/h$d;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p2, v1, p1, p0}, Lcom/kwai/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    :goto_151
    move-object p0, p2

    :goto_152
    return-object p0

    :cond_153
    new-instance p0, Ljava/lang/IllegalStateException;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "please use #catchWarn instead %d"

    invoke-static {p2, p1}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_168
    .packed-switch -0x3
        :pswitch_117
        :pswitch_c
        :pswitch_f4
        :pswitch_c
        :pswitch_ce
        :pswitch_8f
        :pswitch_72
        :pswitch_c
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method

.method public static a(IJJZ)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 13

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_1d

    if-eqz p5, :cond_13

    new-instance p5, Lcom/kwai/filedownloader/message/d$i;

    move-object v1, p5

    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/kwai/filedownloader/message/d$i;-><init>(IJJ)V

    return-object p5

    :cond_13
    new-instance p5, Lcom/kwai/filedownloader/message/d$j;

    move-object v0, p5

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$j;-><init>(IJJ)V

    return-object p5

    :cond_1d
    if-eqz p5, :cond_27

    new-instance p5, Lcom/kwai/filedownloader/message/h$i;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-direct {p5, p0, p1, p2}, Lcom/kwai/filedownloader/message/h$i;-><init>(III)V

    return-object p5

    :cond_27
    new-instance p5, Lcom/kwai/filedownloader/message/h$j;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-direct {p5, p0, p1, p2}, Lcom/kwai/filedownloader/message/h$j;-><init>(III)V

    return-object p5
.end method

.method public static a(IJLjava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 6

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    new-instance v0, Lcom/kwai/filedownloader/message/d$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kwai/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    return-object v0

    :cond_d
    new-instance v0, Lcom/kwai/filedownloader/message/h$d;

    long-to-int p1, p1

    invoke-direct {v0, p0, p1, p3}, Lcom/kwai/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(ILjava/io/File;Z)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    const/4 v2, 0x1

    if-lez p1, :cond_1a

    if-eqz p2, :cond_14

    new-instance p1, Lcom/kwai/filedownloader/message/d$a;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/kwai/filedownloader/message/d$a;-><init>(IZJ)V

    return-object p1

    :cond_14
    new-instance p1, Lcom/kwai/filedownloader/message/d$b;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/kwai/filedownloader/message/d$b;-><init>(IZJ)V

    return-object p1

    :cond_1a
    if-eqz p2, :cond_23

    new-instance p1, Lcom/kwai/filedownloader/message/h$a;

    long-to-int p2, v0

    invoke-direct {p1, p0, v2, p2}, Lcom/kwai/filedownloader/message/h$a;-><init>(IZI)V

    return-object p1

    :cond_23
    new-instance p1, Lcom/kwai/filedownloader/message/h$b;

    long-to-int p2, v0

    invoke-direct {p1, p0, v2, p2}, Lcom/kwai/filedownloader/message/h$b;-><init>(IZI)V

    return-object p1
.end method

.method public static a(Lcom/kwai/filedownloader/a;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 8

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->D()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/kwai/filedownloader/message/d$e;

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v2

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->r()J

    move-result-wide v3

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->t()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/kwai/filedownloader/message/d$e;-><init>(IJJ)V

    return-object v0

    :cond_19
    new-instance v0, Lcom/kwai/filedownloader/message/h$e;

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v1

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->q()I

    move-result v2

    invoke-interface {p0}, Lcom/kwai/filedownloader/a;->s()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/kwai/filedownloader/message/h$e;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

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

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "take block completed snapshot, must has already be completed. %d %d"

    invoke-static {p0, v1}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
