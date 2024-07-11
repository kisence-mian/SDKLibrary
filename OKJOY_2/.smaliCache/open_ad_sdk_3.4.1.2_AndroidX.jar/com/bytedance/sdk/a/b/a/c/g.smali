.class public final Lcom/bytedance/sdk/a/b/a/c/g;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/t$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/a/b/a/b/g;

.field private final c:Lcom/bytedance/sdk/a/b/a/c/c;

.field private final d:Lcom/bytedance/sdk/a/b/a/b/c;

.field private final e:I

.field private final f:Lcom/bytedance/sdk/a/b/y;

.field private final g:Lcom/bytedance/sdk/a/b/e;

.field private final h:Lcom/bytedance/sdk/a/b/p;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;ILcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/t;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/b/g;",
            "Lcom/bytedance/sdk/a/b/a/c/c;",
            "Lcom/bytedance/sdk/a/b/a/b/c;",
            "I",
            "Lcom/bytedance/sdk/a/b/y;",
            "Lcom/bytedance/sdk/a/b/e;",
            "Lcom/bytedance/sdk/a/b/p;",
            "III)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    .line 55
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/c/g;->d:Lcom/bytedance/sdk/a/b/a/b/c;

    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/c/g;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    .line 57
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    .line 58
    iput p5, p0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    .line 59
    iput-object p6, p0, Lcom/bytedance/sdk/a/b/a/c/g;->f:Lcom/bytedance/sdk/a/b/y;

    .line 60
    iput-object p7, p0, Lcom/bytedance/sdk/a/b/a/c/g;->g:Lcom/bytedance/sdk/a/b/e;

    .line 61
    iput-object p8, p0, Lcom/bytedance/sdk/a/b/a/c/g;->h:Lcom/bytedance/sdk/a/b/p;

    .line 62
    iput p9, p0, Lcom/bytedance/sdk/a/b/a/c/g;->i:I

    .line 63
    iput p10, p0, Lcom/bytedance/sdk/a/b/a/c/g;->j:I

    .line 64
    iput p11, p0, Lcom/bytedance/sdk/a/b/a/c/g;->k:I

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/g;->d:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c/g;->a(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;)Lcom/bytedance/sdk/a/b/aa;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11a

    .line 139
    iget v1, v0, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    .line 142
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/c/g;->d:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/s;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_4b

    .line 143
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v5, v0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must retain the same host and port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4b
    :goto_4b
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_7a

    iget v1, v0, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    if-gt v1, v2, :cond_56

    goto :goto_7a

    .line 149
    :cond_56
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v6, v0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_7a
    :goto_7a
    new-instance v1, Lcom/bytedance/sdk/a/b/a/c/g;

    iget-object v6, v0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v5, v0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Lcom/bytedance/sdk/a/b/a/c/g;->g:Lcom/bytedance/sdk/a/b/e;

    iget-object v13, v0, Lcom/bytedance/sdk/a/b/a/c/g;->h:Lcom/bytedance/sdk/a/b/p;

    iget v14, v0, Lcom/bytedance/sdk/a/b/a/c/g;->i:I

    iget v15, v0, Lcom/bytedance/sdk/a/b/a/c/g;->j:I

    iget v11, v0, Lcom/bytedance/sdk/a/b/a/c/g;->k:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lcom/bytedance/sdk/a/b/a/c/g;-><init>(Ljava/util/List;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;ILcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;III)V

    .line 157
    iget-object v5, v0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v6, v0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/a/b/t;

    .line 158
    invoke-interface {v5, v1}, Lcom/bytedance/sdk/a/b/t;->a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v6

    .line 161
    if-eqz p3, :cond_d5

    iget v7, v0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d5

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    if-ne v1, v2, :cond_ba

    goto :goto_d5

    .line 162
    :cond_ba
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_d5
    :goto_d5
    const-string v1, "interceptor "

    if-eqz v6, :cond_fd

    .line 171
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v2

    if-eqz v2, :cond_e0

    .line 176
    return-object v6

    .line 172
    :cond_e0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returned a response with no body"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_fd
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returned null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_11a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public a()Lcom/bytedance/sdk/a/b/y;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->f:Lcom/bytedance/sdk/a/b/y;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->i:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->j:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->k:I

    return v0
.end method

.method public e()Lcom/bytedance/sdk/a/b/i;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->d:Lcom/bytedance/sdk/a/b/a/b/c;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/a/b/a/b/g;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/a/b/a/c/c;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/a/b/e;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->g:Lcom/bytedance/sdk/a/b/e;

    return-object v0
.end method

.method public i()Lcom/bytedance/sdk/a/b/p;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->h:Lcom/bytedance/sdk/a/b/p;

    return-object v0
.end method
