.class Lcom/bytedance/embedapplog/m;
.super Lcom/bytedance/embedapplog/p;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/as;Lcom/bytedance/embedapplog/z;Lcom/bytedance/embedapplog/aa;)V
    .registers 5

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/embedapplog/p;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/as;Lcom/bytedance/embedapplog/z;Lcom/bytedance/embedapplog/aa;)V

    .line 14
    return-void
.end method


# virtual methods
.method b()J
    .registers 3

    .line 18
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/m;->b:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_c

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    return-wide v0
.end method

.method public d()Z
    .registers 2

    .line 23
    invoke-super {p0}, Lcom/bytedance/embedapplog/p;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/m;->b:Z

    return v0
.end method
