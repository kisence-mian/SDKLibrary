.class public final Lcom/efs/sdk/base/a/g/a/d;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    .line 28
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 1170
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 28
    if-nez v0, :cond_13

    .line 29
    new-instance v0, Lcom/efs/sdk/base/a/g/b;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-void

    .line 31
    :cond_13
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 2170
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 31
    iput-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    .line 33
    return-void
.end method

.method private static c(Lcom/efs/sdk/base/a/f/b;)Z
    .registers 4

    .line 61
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/f/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_28

    .line 4164
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v0, v0, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 62
    const-string v2, "wa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 5140
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v0, v0, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 63
    if-ne v1, v0, :cond_1f

    .line 5215
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    .line 63
    if-eqz v0, :cond_28

    .line 6148
    :cond_1f
    iget-object p0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget p0, p0, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 64
    if-ne v1, p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    .line 61
    return p0

    .line 64
    :cond_28
    :goto_28
    return v1
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 5

    .line 38
    invoke-static {p1}, Lcom/efs/sdk/base/a/g/a/d;->c(Lcom/efs/sdk/base/a/f/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/d;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 40
    return-void

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 3121
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->b:Ljava/lang/String;

    .line 43
    nop

    .line 3174
    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 43
    invoke-interface {v0, v1, v2}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 45
    if-eqz v0, :cond_27

    .line 46
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a([B)V

    .line 47
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    invoke-interface {v0}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->getDeVal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a(I)V

    .line 49
    :cond_27
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/d;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 50
    return-void
.end method
