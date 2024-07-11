.class public Lcom/kwai/filedownloader/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/a$d;
.implements Lcom/kwai/filedownloader/w;
.implements Lcom/kwai/filedownloader/w$a;
.implements Lcom/kwai/filedownloader/w$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwai/filedownloader/s;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/kwai/filedownloader/d$a;

.field private volatile d:B

.field private volatile e:J

.field private f:Ljava/lang/Throwable;

.field private final g:Lcom/kwai/filedownloader/r$b;

.field private final h:Lcom/kwai/filedownloader/r$a;

.field private i:J

.field private j:J

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/d$a;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    iput-boolean v0, p0, Lcom/kwai/filedownloader/d;->o:Z

    iput-object p2, p0, Lcom/kwai/filedownloader/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    new-instance p2, Lcom/kwai/filedownloader/b;

    invoke-direct {p2}, Lcom/kwai/filedownloader/b;-><init>()V

    iput-object p2, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    iput-object p2, p0, Lcom/kwai/filedownloader/d;->h:Lcom/kwai/filedownloader/r$a;

    new-instance p2, Lcom/kwai/filedownloader/k;

    invoke-interface {p1}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/kwai/filedownloader/k;-><init>(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    iput-object p2, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    return-void
.end method

.method private e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 10

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kwai/filedownloader/d;->a(B)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->n()Z

    move-result v2

    iput-boolean v2, p0, Lcom/kwai/filedownloader/d;->l:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_156

    :pswitch_1d
    goto/16 :goto_154

    :pswitch_1f
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/s;->b(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_154

    :pswitch_26
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/d;->k:I

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/r$b;->a()V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/s;->f(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_154

    :pswitch_44
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/kwai/filedownloader/r$b;->c(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/s;->d(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_154

    :pswitch_5a
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwai/filedownloader/d;->j:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kwai/filedownloader/d;->m:Z

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/d;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->n()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_87

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    const-string v0, "already has mFilename[%s], but assign mFilename[%s] again"

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_87
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d$a;->c(Ljava/lang/String;)V

    :cond_8c
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    iget-wide v1, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-interface {v0, v1, v2}, Lcom/kwai/filedownloader/r$b;->a(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/s;->c(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_154

    :pswitch_9a
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    :goto_a8
    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/s;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_154

    :pswitch_ad
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    goto :goto_cc

    :pswitch_ba
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/d;->o:Z

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    :cond_cc
    :goto_cc
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_154

    :pswitch_db
    iget-object v1, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    invoke-interface {v1}, Lcom/kwai/filedownloader/r$b;->a()V

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/kwai/filedownloader/h;->a(I)I

    move-result v1

    if-gt v1, v4, :cond_109

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->m()Z

    move-result v5

    if-eqz v5, :cond_109

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v5

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->o()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kwai/filedownloader/f/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/kwai/filedownloader/h;->a(I)I

    move-result v5

    goto :goto_10a

    :cond_109
    move v5, v3

    :goto_10a
    add-int/2addr v1, v5

    if-gt v1, v4, :cond_cc

    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v1

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/kwai/filedownloader/m;->b(I)B

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "warn, but no mListener to receive, switch to pending %d %d"

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/kwai/filedownloader/d/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-virtual {p0, v4}, Lcom/kwai/filedownloader/d;->a(B)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    iget-object v2, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    invoke-interface {v2, v0, v1}, Lcom/kwai/filedownloader/r$b;->a(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    check-cast p1, Lcom/kwai/filedownloader/message/MessageSnapshot$a;

    invoke-interface {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$a;->l()Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object p1

    goto/16 :goto_a8

    :goto_154
    :pswitch_154
    return-void

    nop

    :pswitch_data_156
    .packed-switch -0x4
        :pswitch_db
        :pswitch_ba
        :pswitch_154
        :pswitch_ad
        :pswitch_1d
        :pswitch_9a
        :pswitch_5a
        :pswitch_44
        :pswitch_1d
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method

.method private q()V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwai/filedownloader/f/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/a;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/a;

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_2e

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "save Path is null to %s"

    invoke-static {p0, v4, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->m()Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :cond_3e
    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwai/filedownloader/f/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_4e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_75

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_75

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_75

    :cond_61
    new-instance v0, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    invoke-static {v1, v3}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    :goto_75
    return-void

    :cond_76
    new-instance v1, Ljava/security/InvalidParameterException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "the provided mPath[%s] is invalid, can\'t find its directory"

    invoke-static {v0, v3}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private r()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(B)V

    iput-object p1, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/kwai/filedownloader/message/f;->a(IJLjava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/l$a;->b(Lcom/kwai/filedownloader/a;)V

    :cond_17
    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "filedownloader:lifecycle:start %s by %d "

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method protected a(B)V
    .registers 4

    iput-byte p1, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->e:J

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/d/d;->a(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "can\'t update mStatus change by keep ahead, %d, but the current mStatus is %d, %d"

    invoke-static {p0, v1, p1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    return v0

    :cond_3a
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return v1
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->h:Lcom/kwai/filedownloader/r$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/r$a;->b()I

    move-result v0

    return v0
.end method

.method public b(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-ne v4, v0, :cond_29

    invoke-static {v1}, Lcom/kwai/filedownloader/d/d;->b(I)Z

    move-result v4

    if-eqz v4, :cond_29

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz p1, :cond_28

    new-array p1, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "High concurrent cause, callback pending, but has already be paused %d"

    invoke-static {p0, v0, p1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    return v3

    :cond_29
    invoke-static {v0, v1}, Lcom/kwai/filedownloader/d/d;->b(II)Z

    move-result v0

    if-nez v0, :cond_59

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz p1, :cond_58

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p1, v3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "can\'t update mStatus change by keep flow, %d, but the current mStatus is %d, %d"

    invoke-static {p0, v0, p1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_58
    return v2

    :cond_59
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    return v3
.end method

.method public b_()V
    .registers 3

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/l$a;->c(Lcom/kwai/filedownloader/a;)V

    :cond_1e
    return-void
.end method

.method public c()V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/l$a;->d(Lcom/kwai/filedownloader/a;)V

    :cond_17
    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "filedownloader:lifecycle:over %s by %d "

    invoke-static {p0, v3, v1}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    iget-object v1, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    iget-wide v3, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-interface {v1, v3, v4}, Lcom/kwai/filedownloader/r$b;->b(J)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->S()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->S()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_54
    if-ge v2, v3, :cond_62

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwai/filedownloader/a$a;

    invoke-interface {v4, v0}, Lcom/kwai/filedownloader/a$a;->a(Lcom/kwai/filedownloader/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_62
    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/u;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/u;->b(Lcom/kwai/filedownloader/a$b;)V

    return-void
.end method

.method public c(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/d/d;->a(Lcom/kwai/filedownloader/a;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    const/4 p1, 0x1

    return p1
.end method

.method public d()Lcom/kwai/filedownloader/s;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    return-object v0
.end method

.method public d(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v2, -0x4

    if-ne v0, v2, :cond_26

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    goto :goto_26

    :cond_21
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    const/4 p1, 0x1

    return p1

    :cond_26
    :goto_26
    return v1
.end method

.method public e()V
    .registers 9

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-byte v1, p0, Lcom/kwai/filedownloader/d;->d:B

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_25

    const-string v1, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-byte v4, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_25
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/kwai/filedownloader/d;->a(B)V

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_9f

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/kwai/filedownloader/l$a;->a(Lcom/kwai/filedownloader/a;)V

    :cond_42
    sget-boolean v5, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v5, :cond_67

    const-string v5, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->i()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->p()Lcom/kwai/filedownloader/i;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->z()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {p0, v5, v6}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_67
    :try_start_67
    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6c

    move v0, v3

    goto :goto_80

    :catchall_6c
    move-exception v1

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/h;->b(Lcom/kwai/filedownloader/a$b;)V

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/kwai/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move v0, v4

    :goto_80
    if-eqz v0, :cond_89

    invoke-static {}, Lcom/kwai/filedownloader/p;->a()Lcom/kwai/filedownloader/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/p;->a(Lcom/kwai/filedownloader/w$b;)V

    :cond_89
    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_9e

    const-string v0, "the task[%d] has been into the launch pool."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9e
    return-void

    :catchall_9f
    move-exception v1

    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method public f()Z
    .registers 7

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v0

    invoke-static {v0}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->g()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v3}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v3

    invoke-interface {v3}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "High concurrent cause, Already is over, can\'t pause again, %d %d"

    invoke-static {p0, v2, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    return v1

    :cond_37
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v3

    invoke-static {}, Lcom/kwai/filedownloader/p;->a()Lcom/kwai/filedownloader/p;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/kwai/filedownloader/p;->b(Lcom/kwai/filedownloader/w$b;)V

    sget-boolean v4, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v4, :cond_61

    new-array v4, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "the task[%d] has been expired from the launch pool."

    invoke-static {p0, v5, v4}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwai/filedownloader/q;->c()Z

    move-result v4

    if-nez v4, :cond_81

    sget-boolean v4, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v4, :cond_8c

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "request pause the task[%d] to the download service, but the download service isn\'t connected yet."

    invoke-static {p0, v1, v4}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8c

    :cond_81
    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v1

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->h()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/m;->a(I)Z

    :cond_8c
    :goto_8c
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/h;->b(Lcom/kwai/filedownloader/a$b;)V

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-static {v3}, Lcom/kwai/filedownloader/message/f;->a(Lcom/kwai/filedownloader/a;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/u;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/u;->b(Lcom/kwai/filedownloader/a$b;)V

    return v2
.end method

.method public g()B
    .registers 2

    iget-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B

    return v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/d;->e:J

    return-wide v0
.end method

.method public i()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/d;->m:Z

    iput v0, p0, Lcom/kwai/filedownloader/d;->k:I

    iput-boolean v0, p0, Lcom/kwai/filedownloader/d;->o:Z

    iput-boolean v0, p0, Lcom/kwai/filedownloader/d;->l:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kwai/filedownloader/d;->i:J

    iput-wide v1, p0, Lcom/kwai/filedownloader/d;->j:J

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/r$b;

    invoke-interface {v1}, Lcom/kwai/filedownloader/r$b;->a()V

    iget-byte v1, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v1}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    invoke-interface {v1}, Lcom/kwai/filedownloader/s;->e()V

    new-instance v1, Lcom/kwai/filedownloader/k;

    iget-object v2, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v2}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/kwai/filedownloader/k;-><init>(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    iput-object v1, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    goto :goto_3f

    :cond_34
    iget-object v1, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/s;

    iget-object v2, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v2}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/kwai/filedownloader/s;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    :goto_3f
    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(B)V

    return-void
.end method

.method public j()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    return-wide v0
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    return-wide v0
.end method

.method public l()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/d;->k:I

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/d;->l:Z

    return v0
.end method

.method public o()V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "free the task %d, when the status is %d"

    invoke-static {p0, v2, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {p0, v1}, Lcom/kwai/filedownloader/d;->a(B)V

    return-void
.end method

.method public p()V
    .registers 19

    move-object/from16 v1, p0

    iget-byte v0, v1, Lcom/kwai/filedownloader/d;->d:B

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_25

    const-string v0, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-byte v3, v1, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_25
    iget-object v0, v1, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->R()Lcom/kwai/filedownloader/a$b;

    move-result-object v6

    invoke-interface {v6}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/u;

    move-result-object v7

    :try_start_37
    invoke-interface {v7, v6}, Lcom/kwai/filedownloader/u;->c(Lcom/kwai/filedownloader/a$b;)Z

    move-result v8

    if-eqz v8, :cond_3e

    return-void

    :cond_3e
    iget-object v8, v1, Lcom/kwai/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v8
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_108

    :try_start_41
    iget-byte v9, v1, Lcom/kwai/filedownloader/d;->d:B

    if-eq v9, v3, :cond_60

    const-string v0, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-byte v3, v1, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8

    return-void

    :cond_60
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/d;->a(B)V

    monitor-exit v8
    :try_end_66
    .catchall {:try_start_41 .. :try_end_66} :catchall_105

    :try_start_66
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/kwai/filedownloader/h;->b(Lcom/kwai/filedownloader/a$b;)V

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v2

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->x()Z

    move-result v8

    invoke-static {v2, v3, v8, v5}, Lcom/kwai/filedownloader/f/c;->a(ILjava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_80

    return-void

    :cond_80
    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v8

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->i()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->m()Z

    move-result v11

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->j()I

    move-result v12

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->k()I

    move-result v13

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->A()I

    move-result v14

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->x()Z

    move-result v15

    iget-object v2, v1, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v2}, Lcom/kwai/filedownloader/d$a;->Q()Lcom/kwai/filedownloader/d/b;

    move-result-object v16

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->E()Z

    move-result v17

    invoke-virtual/range {v8 .. v17}, Lcom/kwai/filedownloader/m;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)Z

    move-result v0

    iget-byte v2, v1, Lcom/kwai/filedownloader/d;->d:B

    const/4 v3, -0x2

    if-ne v2, v3, :cond_d2

    const-string v2, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_d1

    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/d;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/m;->a(I)Z

    :cond_d1
    return-void

    :cond_d2
    if-nez v0, :cond_101

    invoke-interface {v7, v6}, Lcom/kwai/filedownloader/u;->c(Lcom/kwai/filedownloader/a$b;)Z

    move-result v0

    if-nez v0, :cond_117

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;)Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-interface {v7, v6}, Lcom/kwai/filedownloader/u;->b(Lcom/kwai/filedownloader/a$b;)V

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/kwai/filedownloader/h;->b(Lcom/kwai/filedownloader/a$b;)V

    :cond_f9
    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    goto :goto_117

    :cond_101
    invoke-interface {v7, v6}, Lcom/kwai/filedownloader/u;->b(Lcom/kwai/filedownloader/a$b;)V
    :try_end_104
    .catchall {:try_start_66 .. :try_end_104} :catchall_108

    goto :goto_117

    :catchall_105
    move-exception v0

    :try_start_106
    monitor-exit v8
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    :try_start_107
    throw v0
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_108

    :catchall_108
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    :cond_117
    :goto_117
    return-void
.end method
