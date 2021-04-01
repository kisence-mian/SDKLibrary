.class public Lcom/bytedance/sdk/openadsdk/g/b;
.super Ljava/lang/Object;
.source "StatsImageListener.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# instance fields
.field private a:Z

.field private b:Lcom/bytedance/sdk/openadsdk/f/a/d;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_f

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 59
    :cond_f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_9

    .line 31
    :cond_8
    :goto_8
    return-void

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    goto :goto_8
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 5

    .prologue
    const/16 v1, 0xca

    .line 67
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_b

    .line 75
    :cond_a
    :goto_a
    return-void

    .line 70
    :cond_b
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_a

    .line 71
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 72
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->k(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    goto :goto_a
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_9

    .line 24
    :cond_8
    :goto_8
    return-void

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    goto :goto_8
.end method

.method public b()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0xc9

    .line 89
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_b

    .line 95
    :cond_a
    :goto_a
    return-void

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 93
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->k(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    goto :goto_a
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_9

    .line 38
    :cond_8
    :goto_8
    return-void

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    goto :goto_8
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_9

    .line 45
    :cond_8
    :goto_8
    return-void

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    goto :goto_8
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    if-nez v0, :cond_9

    .line 52
    :cond_8
    :goto_8
    return-void

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    goto :goto_8
.end method
