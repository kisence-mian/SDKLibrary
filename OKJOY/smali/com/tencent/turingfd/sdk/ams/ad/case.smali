.class public Lcom/tencent/turingfd/sdk/ams/ad/case;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public l:Landroid/content/Context;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->m:Ljava/lang/String;

    const/16 v0, 0xbb8

    .line 3
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->n:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->o:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->p:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->q:Z

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->r:Ljava/lang/String;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->s:Ljava/lang/String;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->t:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->u:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    .line 2
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->p:Ljava/lang/String;

    goto :goto_a
.end method

.method public f()I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->u:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->l:Landroid/content/Context;

    return-object v0
.end method

.method public final getTimeout()I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->n:I

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    .line 2
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->m:Ljava/lang/String;

    goto :goto_a
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->v:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->o:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final l()V
    .registers 1

    return-void
.end method

.method public m()Lcom/tencent/turingfd/sdk/ams/ad/this;
    .registers 3

    .prologue
    const-string v0, "https://tdid.m.qq.com?mc=2"

    .line 1
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/while;

    invoke-direct {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/while;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final n()Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->q:Z

    return v0
.end method
