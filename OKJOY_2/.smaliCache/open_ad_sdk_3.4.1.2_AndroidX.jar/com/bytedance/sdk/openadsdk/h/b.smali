.class public Lcom/bytedance/sdk/openadsdk/h/b;
.super Ljava/lang/Object;
.source "StatsImageListener.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# instance fields
.field private a:Z

.field private b:Lcom/bytedance/sdk/openadsdk/g/a/c;


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    .line 56
    if-eqz p1, :cond_d

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 59
    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 63
    return-void
.end method

.method public a(I)V
    .registers 3

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 30
    :cond_9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 31
    return-void

    .line 28
    :cond_d
    :goto_d
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 3

    .line 67
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez p2, :cond_9

    goto :goto_2a

    .line 70
    :cond_9
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_29

    .line 71
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    const/16 p2, 0xca

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 72
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a;->k(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 75
    :cond_29
    return-void

    .line 68
    :cond_2a
    :goto_2a
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 20
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 23
    :cond_9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 24
    return-void

    .line 21
    :cond_d
    :goto_d
    return-void
.end method

.method public b()V
    .registers 1

    .line 80
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez p1, :cond_9

    goto :goto_20

    .line 92
    :cond_9
    const/16 v0, 0xc9

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 93
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a;->k(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 95
    return-void

    .line 90
    :cond_20
    :goto_20
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 37
    :cond_9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 38
    return-void

    .line 35
    :cond_d
    :goto_d
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 44
    :cond_9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 45
    return-void

    .line 42
    :cond_d
    :goto_d
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    .line 48
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 51
    :cond_9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 52
    return-void

    .line 49
    :cond_d
    :goto_d
    return-void
.end method
