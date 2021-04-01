.class public Lcom/kwai/filedownloader/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/x;
.implements Lcom/kwai/filedownloader/x$b;
.implements Lcom/kwai/filedownloader/x$a;
.implements Lcom/kwai/filedownloader/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwai/filedownloader/t;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/kwai/filedownloader/d$a;

.field private volatile d:B

.field private volatile e:J

.field private f:Ljava/lang/Throwable;

.field private final g:Lcom/kwai/filedownloader/s;

.field private final h:Lcom/kwai/filedownloader/r;

.field private i:J

.field private j:J

.field private k:I

.field private l:Z


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/d$a;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/kwai/filedownloader/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    new-instance v0, Lcom/kwai/filedownloader/b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/b;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->h:Lcom/kwai/filedownloader/r;

    new-instance v0, Lcom/kwai/filedownloader/k;

    invoke-interface {p1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/k;-><init>(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    return-void
.end method

.method private e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(B)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->m()Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwai/filedownloader/d;->l:Z

    packed-switch v0, :pswitch_data_168

    :goto_1d
    :pswitch_1d
    return-void

    :pswitch_1e
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_1d

    :pswitch_24
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->l()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->h()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/d;->k:I

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    invoke-interface {v0}, Lcom/kwai/filedownloader/s;->b()V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->i(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_1d

    :pswitch_41
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/kwai/filedownloader/s;->a(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->h(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_1d

    :pswitch_56
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kwai/filedownloader/d;->j:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->n()Z

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->c()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->M()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7d

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->M()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    aput-object v0, v3, v6

    const-string v1, "already has mFilename[%s], but assign mFilename[%s] again"

    invoke-static {p0, v1, v3}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7d
    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/d$a;->c(Ljava/lang/String;)V

    :cond_82
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    iget-wide v2, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-interface {v0, v2, v3}, Lcom/kwai/filedownloader/s;->c(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->d(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_1d

    :pswitch_8f
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/t;->b(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_1d

    :pswitch_a2
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->l()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_1d

    :pswitch_bd
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->o()Z

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_1d

    :pswitch_db
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    invoke-interface {v0}, Lcom/kwai/filedownloader/s;->b()V

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/kwai/filedownloader/h;->a(I)I

    move-result v3

    if-gt v3, v6, :cond_157

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->t()Z

    move-result v0

    if-eqz v0, :cond_157

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->x()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kwai/filedownloader/h0/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/kwai/filedownloader/h;->a(I)I

    move-result v0

    :goto_108
    add-int/2addr v0, v3

    if-gt v0, v6, :cond_159

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/kwai/filedownloader/m;->b(I)B

    move-result v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, "warn, but no mListener to receive, switch to pending %d %d"

    invoke-static {p0, v1, v3}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kwai/filedownloader/f0/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-virtual {p0, v6}, Lcom/kwai/filedownloader/d;->a(B)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    iget-wide v2, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-interface {v0, v2, v3}, Lcom/kwai/filedownloader/s;->c(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    check-cast p1, Lcom/kwai/filedownloader/message/MessageSnapshot$b;

    invoke-interface {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot$b;->a()Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/t;->b(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_1d

    :cond_157
    move v0, v1

    goto :goto_108

    :cond_159
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_1d

    :pswitch_data_168
    .packed-switch -0x4
        :pswitch_db
        :pswitch_bd
        :pswitch_1d
        :pswitch_a2
        :pswitch_1d
        :pswitch_8f
        :pswitch_56
        :pswitch_41
        :pswitch_1d
        :pswitch_24
        :pswitch_1e
    .end packed-switch
.end method

.method private q()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v0

    return v0
.end method

.method private r()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/a;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/a;

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_2e

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "save Path is null to %s"

    invoke-static {p0, v2, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->t()Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Ljava/io/File;

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_60

    :cond_4f
    return-void

    :cond_50
    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_74

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :cond_60
    new-instance v1, Ljava/io/IOException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    new-instance v0, Ljava/security/InvalidParameterException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "the provided mPath[%s] is invalid, can\'t find its directory"

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;
    .registers 6

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(B)V

    iput-object p1, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->k()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lcom/kwai/filedownloader/message/f;->a(IJLjava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method

.method protected a(B)V
    .registers 4

    iput-byte p1, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/d;->e:J

    return-void
.end method

.method public a()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v2

    invoke-static {v2}, Lcom/kwai/filedownloader/f0/d;->b(I)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_36

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v3}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v3

    invoke-interface {v3}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "High concurrent cause, Already is over, can\'t pause again, %d %d"

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    :goto_36
    return v0

    :cond_37
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/kwai/filedownloader/d;->a(B)V

    iget-object v2, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v2}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v2

    invoke-interface {v2}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v3

    invoke-static {}, Lcom/kwai/filedownloader/p;->a()Lcom/kwai/filedownloader/p;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/kwai/filedownloader/p;->a(Lcom/kwai/filedownloader/x$b;)V

    sget-boolean v4, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v4, :cond_61

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "the task[%d] has been expired from the launch pool."

    invoke-static {p0, v5, v4}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwai/filedownloader/q;->d()Z

    move-result v4

    if-nez v4, :cond_9f

    sget-boolean v4, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v4, :cond_80

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "request pause the task[%d] to the download service, but the download service isn\'t connected yet."

    invoke-static {p0, v0, v4}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_80
    :goto_80
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;)V

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-static {v3}, Lcom/kwai/filedownloader/message/f;->a(Lcom/kwai/filedownloader/a;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->b()Lcom/kwai/filedownloader/v;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/kwai/filedownloader/v;->c(Lcom/kwai/filedownloader/a$b;)V

    move v0, v1

    goto :goto_36

    :cond_9f
    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/kwai/filedownloader/m;->c(I)Z

    goto :goto_80
.end method

.method public a(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v3

    const/4 v4, -0x2

    if-ne v4, v2, :cond_29

    invoke-static {v3}, Lcom/kwai/filedownloader/f0/d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_29

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_28

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "High concurrent cause, callback pending, but has already be paused %d"

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    :goto_28
    return v0

    :cond_29
    invoke-static {v2, v3}, Lcom/kwai/filedownloader/f0/d;->b(II)Z

    move-result v2

    if-nez v2, :cond_5a

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_58

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-byte v3, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "can\'t update mStatus change by keep flow, %d, but the current mStatus is %d, %d"

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_58
    move v0, v1

    goto :goto_28

    :cond_5a
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_28
.end method

.method public b()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    iput v2, p0, Lcom/kwai/filedownloader/d;->k:I

    iput-boolean v2, p0, Lcom/kwai/filedownloader/d;->l:Z

    iput-wide v4, p0, Lcom/kwai/filedownloader/d;->i:J

    iput-wide v4, p0, Lcom/kwai/filedownloader/d;->j:J

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    invoke-interface {v0}, Lcom/kwai/filedownloader/s;->b()V

    iget-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v0}, Lcom/kwai/filedownloader/f0/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    invoke-interface {v0}, Lcom/kwai/filedownloader/t;->a()V

    new-instance v0, Lcom/kwai/filedownloader/k;

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kwai/filedownloader/k;-><init>(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    :goto_2d
    invoke-virtual {p0, v2}, Lcom/kwai/filedownloader/d;->a(B)V

    return-void

    :cond_31
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/kwai/filedownloader/t;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/a$d;)V

    goto :goto_2d
.end method

.method public b(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v3

    invoke-static {v2, v3}, Lcom/kwai/filedownloader/f0/d;->a(II)Z

    move-result v2

    if-nez v2, :cond_3a

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_39

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-byte v3, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "can\'t update mStatus change by keep ahead, %d, but the current mStatus is %d, %d"

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    :goto_39
    return v0

    :cond_3a
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    move v0, v1

    goto :goto_39
.end method

.method public c()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method public c(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/f0/d;->a(Lcom/kwai/filedownloader/a;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->h:Lcom/kwai/filedownloader/r;

    invoke-interface {v0}, Lcom/kwai/filedownloader/r;->d()I

    move-result v0

    return v0
.end method

.method public d(Lcom/kwai/filedownloader/message/MessageSnapshot;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->t()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->k()B

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d;->e(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/d;->e:J

    return-wide v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/d;->l:Z

    return v0
.end method

.method public g()V
    .registers 5

    const/4 v3, 0x0

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "free the task %d, when the status is %d"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {p0, v3}, Lcom/kwai/filedownloader/d;->a(B)V

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/d;->k:I

    return v0
.end method

.method public i()B
    .registers 2

    iget-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B

    return v0
.end method

.method public j()V
    .registers 8

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kwai/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a2

    if-eqz v0, :cond_28

    const-string v0, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    const/4 v1, 0x2

    :try_start_d
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-byte v4, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    :cond_27
    :goto_27
    return-void

    :cond_28
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(B)V

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_a2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v3

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/kwai/filedownloader/l$a;->c(Lcom/kwai/filedownloader/a;)V

    :cond_45
    sget-boolean v4, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v4, :cond_6a

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->E()Lcom/kwai/filedownloader/i;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v3}, Lcom/kwai/filedownloader/a;->B()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const-string v3, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"

    invoke-static {p0, v3, v4}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6a
    :try_start_6a
    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->r()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_8d

    move v0, v1

    :goto_6e
    if-eqz v0, :cond_77

    invoke-static {}, Lcom/kwai/filedownloader/p;->a()Lcom/kwai/filedownloader/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/p;->b(Lcom/kwai/filedownloader/x$b;)V

    :cond_77
    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_27

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "the task[%d] has been into the launch pool."

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    :catchall_8d
    move-exception v3

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;)V

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/kwai/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    move v0, v2

    goto :goto_6e

    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v3
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/d;->i:J

    return-wide v0
.end method

.method public l()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/d;->j:J

    return-wide v0
.end method

.method public m()V
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/l$a;->b(Lcom/kwai/filedownloader/a;)V

    :cond_17
    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "filedownloader:lifecycle:start %s by %d "

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method public n()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v3

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/kwai/filedownloader/l$a;->a(Lcom/kwai/filedownloader/a;)V

    :cond_18
    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "filedownloader:lifecycle:over %s by %d "

    invoke-static {p0, v2, v0}, Lcom/kwai/filedownloader/h0/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->g:Lcom/kwai/filedownloader/s;

    iget-wide v4, p0, Lcom/kwai/filedownloader/d;->i:J

    invoke-interface {v0, v4, v5}, Lcom/kwai/filedownloader/s;->b(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->m()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_55
    if-ge v2, v4, :cond_64

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/a$a;

    invoke-interface {v1, v3}, Lcom/kwai/filedownloader/a$a;->a(Lcom/kwai/filedownloader/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_55

    :cond_64
    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->b()Lcom/kwai/filedownloader/v;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/v;->c(Lcom/kwai/filedownloader/a$b;)V

    return-void
.end method

.method public o()V
    .registers 3

    invoke-static {}, Lcom/kwai/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d;->i()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    invoke-static {}, Lcom/kwai/filedownloader/l;->a()Lcom/kwai/filedownloader/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/l$a;->d(Lcom/kwai/filedownloader/a;)V

    :cond_1e
    return-void
.end method

.method public p()Lcom/kwai/filedownloader/t;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d;->a:Lcom/kwai/filedownloader/t;

    return-object v0
.end method

.method public start()V
    .registers 13

    const/16 v4, 0xa

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B

    if-eq v0, v4, :cond_23

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d$a;->L()Lcom/kwai/filedownloader/a$b;

    move-result-object v10

    invoke-interface {v10}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v9

    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->b()Lcom/kwai/filedownloader/v;

    move-result-object v11

    :try_start_35
    invoke-interface {v11, v10}, Lcom/kwai/filedownloader/v;->b(Lcom/kwai/filedownloader/a$b;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v1, p0, Lcom/kwai/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_63

    :try_start_3e
    iget-byte v0, p0, Lcom/kwai/filedownloader/d;->d:B
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_60

    if-eq v0, v4, :cond_73

    const-string v0, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    const/4 v2, 0x2

    :try_start_45
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-byte v4, p0, Lcom/kwai/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_22

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_60

    :try_start_62
    throw v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    goto :goto_22

    :cond_73
    const/16 v0, 0xb

    :try_start_75
    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(B)V

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_60

    :try_start_79
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;)V

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->getId()I

    move-result v0

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->k()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/kwai/filedownloader/h0/c;->a(ILjava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->t()Z

    move-result v3

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->y()I

    move-result v4

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->G()I

    move-result v5

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->A()I

    move-result v6

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->k()Z

    move-result v7

    iget-object v8, p0, Lcom/kwai/filedownloader/d;->c:Lcom/kwai/filedownloader/d$a;

    invoke-interface {v8}, Lcom/kwai/filedownloader/d$a;->p()Lcom/kwai/filedownloader/f0/b;

    move-result-object v8

    invoke-interface {v9}, Lcom/kwai/filedownloader/a;->z()Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/kwai/filedownloader/m;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)Z

    move-result v0

    iget-byte v1, p0, Lcom/kwai/filedownloader/d;->d:B
    :try_end_c3
    .catchall {:try_start_79 .. :try_end_c3} :catchall_63

    const/4 v2, -0x2

    if-ne v1, v2, :cond_e8

    const-string v1, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    const/4 v2, 0x1

    :try_start_c9
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-direct {p0}, Lcom/kwai/filedownloader/d;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/m;->c(I)Z

    goto/16 :goto_22

    :cond_e8
    if-nez v0, :cond_118

    invoke-interface {v11, v10}, Lcom/kwai/filedownloader/v;->b(Lcom/kwai/filedownloader/a$b;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/kwai/filedownloader/h;->c(Lcom/kwai/filedownloader/a$b;)Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-interface {v11, v10}, Lcom/kwai/filedownloader/v;->c(Lcom/kwai/filedownloader/a$b;)V

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;)V

    :cond_10f
    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;Lcom/kwai/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_22

    :cond_118
    invoke-interface {v11, v10}, Lcom/kwai/filedownloader/v;->c(Lcom/kwai/filedownloader/a$b;)V
    :try_end_11b
    .catchall {:try_start_c9 .. :try_end_11b} :catchall_63

    goto/16 :goto_22
.end method
