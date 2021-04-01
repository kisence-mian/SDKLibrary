.class Lcom/bytedance/embedapplog/a/g;
.super Lcom/bytedance/embedapplog/a/j;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/embedapplog/a/j;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V

    .line 14
    return-void
.end method


# virtual methods
.method b()J
    .registers 3

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/g;->b:Z

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
    .line 23
    invoke-super {p0}, Lcom/bytedance/embedapplog/a/j;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/g;->b:Z

    return v0
.end method
