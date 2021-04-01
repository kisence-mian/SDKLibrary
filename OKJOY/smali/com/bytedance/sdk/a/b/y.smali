.class public final Lcom/bytedance/sdk/a/b/y;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/y$a;
    }
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/s;

.field final b:Ljava/lang/String;

.field final c:Lcom/bytedance/sdk/a/b/r;

.field final d:Lcom/bytedance/sdk/a/b/z;

.field final e:Ljava/lang/Object;

.field private volatile f:Lcom/bytedance/sdk/a/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/y$a;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y$a;->a:Lcom/bytedance/sdk/a/b/s;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y;->a:Lcom/bytedance/sdk/a/b/s;

    .line 39
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y;->b:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y$a;->c:Lcom/bytedance/sdk/a/b/r$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y;->c:Lcom/bytedance/sdk/a/b/r;

    .line 41
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y$a;->d:Lcom/bytedance/sdk/a/b/z;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y;->d:Lcom/bytedance/sdk/a/b/z;

    .line 42
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y$a;->e:Ljava/lang/Object;

    :goto_1d
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y;->e:Ljava/lang/Object;

    .line 43
    return-void

    :cond_20
    move-object v0, p0

    .line 42
    goto :goto_1d
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/s;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->a:Lcom/bytedance/sdk/a/b/s;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->c:Lcom/bytedance/sdk/a/b/r;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/a/b/r;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->c:Lcom/bytedance/sdk/a/b/r;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/a/b/z;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->d:Lcom/bytedance/sdk/a/b/z;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/a/b/y$a;
    .registers 2

    .prologue
    .line 74
    new-instance v0, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/y$a;-><init>(Lcom/bytedance/sdk/a/b/y;)V

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/a/b/d;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->f:Lcom/bytedance/sdk/a/b/d;

    .line 83
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->c:Lcom/bytedance/sdk/a/b/r;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/d;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y;->f:Lcom/bytedance/sdk/a/b/d;

    goto :goto_4
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->a:Lcom/bytedance/sdk/a/b/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/y;->a:Lcom/bytedance/sdk/a/b/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_38

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y;->e:Ljava/lang/Object;

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_29
.end method
