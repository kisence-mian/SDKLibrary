.class final Lcom/anythink/basead/a/a/d;
.super Lcom/anythink/core/common/res/image/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/anythink/core/common/d/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/anythink/core/common/d/h;Ljava/lang/String;)V
    .registers 5

    .line 38
    invoke-direct {p0, p4}, Lcom/anythink/core/common/res/image/b;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/anythink/basead/a/a/d;->m:Lcom/anythink/core/common/d/h;

    .line 40
    iput-object p1, p0, Lcom/anythink/basead/a/a/d;->a:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Lcom/anythink/basead/a/a/d;->b:Z

    .line 42
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/basead/a/a/d;->j:Z

    .line 43
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/a/a/d;->k:Ljava/lang/String;

    .line 44
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->b()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/a/a/d;->l:I

    .line 45
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/anythink/core/common/g/a/b;)V
    .registers 4

    .line 64
    iget-boolean v0, p0, Lcom/anythink/basead/a/a/d;->b:Z

    if-eqz v0, :cond_d

    .line 65
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    return-void

    .line 67
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 69
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 84
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/anythink/basead/a/a/d;->j:Z

    if-eqz v1, :cond_20

    .line 85
    iget-object v2, v0, Lcom/anythink/basead/a/a/d;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/basead/a/a/d;->k:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/basead/a/a/d;->c:Ljava/lang/String;

    iget-wide v6, v0, Lcom/anythink/basead/a/a/d;->i:J

    iget-wide v9, v0, Lcom/anythink/basead/a/a/d;->e:J

    iget v13, v0, Lcom/anythink/basead/a/a/d;->l:I

    iget-wide v14, v0, Lcom/anythink/basead/a/a/d;->h:J

    iget-wide v11, v0, Lcom/anythink/basead/a/a/d;->f:J

    sub-long/2addr v14, v11

    const-string v5, "0"

    move-object/from16 v8, p2

    const-wide/16 v11, 0x0

    invoke-static/range {v2 .. v15}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIJ)V

    .line 88
    :cond_20
    invoke-static {}, Lcom/anythink/basead/a/a/c;->a()Lcom/anythink/basead/a/a/c;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/basead/a/a/d;->c:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/a/a/c;->a(Ljava/lang/String;Lcom/anythink/basead/c/f;)V

    .line 89
    return-void
.end method

.method protected final a(Ljava/io/InputStream;)Z
    .registers 3

    .line 59
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    iget-object v0, p0, Lcom/anythink/basead/a/a/d;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/anythink/basead/a/d;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method protected final b()V
    .registers 1

    .line 55
    return-void
.end method

.method protected final c()V
    .registers 20

    .line 74
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/anythink/basead/a/a/d;->j:Z

    if-eqz v1, :cond_36

    .line 75
    const/16 v1, 0x1e

    iget-object v2, v0, Lcom/anythink/basead/a/a/d;->m:Lcom/anythink/core/common/d/h;

    new-instance v3, Lcom/anythink/basead/c/h;

    const-string v4, ""

    invoke-direct {v3, v4, v4}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 76
    iget-object v5, v0, Lcom/anythink/basead/a/a/d;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/anythink/basead/a/a/d;->k:Ljava/lang/String;

    iget-object v7, v0, Lcom/anythink/basead/a/a/d;->c:Ljava/lang/String;

    iget-wide v9, v0, Lcom/anythink/basead/a/a/d;->i:J

    iget-wide v12, v0, Lcom/anythink/basead/a/a/d;->e:J

    iget-wide v14, v0, Lcom/anythink/basead/a/a/d;->g:J

    iget v1, v0, Lcom/anythink/basead/a/a/d;->l:I

    iget-wide v2, v0, Lcom/anythink/basead/a/a/d;->h:J

    move-wide/from16 v16, v12

    iget-wide v11, v0, Lcom/anythink/basead/a/a/d;->f:J

    sub-long/2addr v2, v11

    const-string v8, "1"

    const/4 v4, 0x0

    move-object v11, v4

    move-wide/from16 v12, v16

    move/from16 v16, v1

    move-wide/from16 v17, v2

    invoke-static/range {v5 .. v18}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIJ)V

    .line 79
    :cond_36
    invoke-static {}, Lcom/anythink/basead/a/a/c;->a()Lcom/anythink/basead/a/a/c;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/basead/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/a/a/c;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method
