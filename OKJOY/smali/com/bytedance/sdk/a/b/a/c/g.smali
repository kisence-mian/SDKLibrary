.class public final Lcom/bytedance/sdk/a/b/a/c/g;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/t$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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

    .prologue
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

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/g;->d:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c/g;->a(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;)Lcom/bytedance/sdk/a/b/aa;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_10
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->d:Lcom/bytedance/sdk/a/b/a/b/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/s;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    if-eqz v0, :cond_81

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_81

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_81
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    add-int/lit8 v5, v2, 0x1

    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/c/g;->g:Lcom/bytedance/sdk/a/b/e;

    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/c/g;->h:Lcom/bytedance/sdk/a/b/p;

    iget v9, p0, Lcom/bytedance/sdk/a/b/a/c/g;->i:I

    iget v10, p0, Lcom/bytedance/sdk/a/b/a/c/g;->j:I

    iget v11, p0, Lcom/bytedance/sdk/a/b/a/c/g;->k:I

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/sdk/a/b/a/c/g;-><init>(Ljava/util/List;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;ILcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;III)V

    .line 157
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/t;

    .line 158
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/a/b/t;->a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v2

    .line 161
    if-eqz p3, :cond_db

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/c/g;->e:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/c/g;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_db

    iget v0, v0, Lcom/bytedance/sdk/a/b/a/c/g;->l:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_db

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_db
    if-nez v2, :cond_fc

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_fc
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    if-nez v0, :cond_121

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned a response with no body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_121
    return-object v2
.end method

.method public a()Lcom/bytedance/sdk/a/b/y;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->f:Lcom/bytedance/sdk/a/b/y;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->i:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->j:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->k:I

    return v0
.end method

.method public e()Lcom/bytedance/sdk/a/b/i;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->d:Lcom/bytedance/sdk/a/b/a/b/c;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/a/b/a/b/g;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/a/b/a/c/c;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->c:Lcom/bytedance/sdk/a/b/a/c/c;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/a/b/e;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->g:Lcom/bytedance/sdk/a/b/e;

    return-object v0
.end method

.method public i()Lcom/bytedance/sdk/a/b/p;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/g;->h:Lcom/bytedance/sdk/a/b/p;

    return-object v0
.end method
