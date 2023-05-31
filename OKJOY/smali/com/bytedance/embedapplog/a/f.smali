.class Lcom/bytedance/embedapplog/a/f;
.super Lcom/bytedance/embedapplog/a/h;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/embedapplog/a/h;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V

    .line 13
    return-void
.end method


# virtual methods
.method b()J
    .registers 3

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/f;->b:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    :goto_9
    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/bytedance/embedapplog/a/h;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/f;->b:Z

    return v0
.end method
