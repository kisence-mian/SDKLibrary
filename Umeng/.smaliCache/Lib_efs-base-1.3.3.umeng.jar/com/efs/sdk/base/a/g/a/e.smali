.class public final Lcom/efs/sdk/base/a/g/a/e;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 7

    .line 21
    nop

    .line 1215
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    .line 21
    if-nez v0, :cond_b

    .line 22
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/e;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 23
    return-void

    .line 27
    :cond_b
    invoke-static {}, Lcom/efs/sdk/base/a/e/d;->a()Lcom/efs/sdk/base/a/e/d;

    move-result-object v0

    .line 2147
    nop

    .line 2229
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v1, v1, Lcom/efs/sdk/base/a/f/c;->b:Z

    .line 2147
    if-eqz v1, :cond_32

    invoke-static {}, Lcom/efs/sdk/base/a/e/b;->a()Lcom/efs/sdk/base/a/e/b;

    move-result-object v1

    .line 3164
    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v2, v2, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 2147
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/f/b;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2150
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    .line 2151
    const-string v1, "flow_limit"

    iput-object v1, v0, Lcom/efs/sdk/base/http/HttpResponse;->data:Ljava/lang/String;

    .line 2152
    goto :goto_4b

    .line 4053
    :cond_32
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v1

    .line 4131
    iget-object v1, v1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {v1}, Lcom/efs/sdk/base/a/i/d;->b()V

    .line 5053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v1

    .line 5138
    iget-object v1, v1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {v1}, Lcom/efs/sdk/base/a/i/d;->c()V

    .line 2160
    iget-object v0, v0, Lcom/efs/sdk/base/a/e/d;->b:Lcom/efs/sdk/base/a/e/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/efs/sdk/base/a/e/c;->a(Lcom/efs/sdk/base/a/f/b;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    .line 27
    :goto_4b
    nop

    .line 28
    nop

    .line 5233
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iput-object v0, v1, Lcom/efs/sdk/base/a/f/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    .line 29
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/e;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 30
    return-void
.end method
