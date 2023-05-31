.class public Lcom/bytedance/sdk/openadsdk/core/d/g;
.super Ljava/lang/Object;
.source "DownConfig.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->a:I

    .line 87
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->b:I

    .line 96
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->c:I

    .line 98
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->d:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->e:I

    .line 103
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->f:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->f:I

    .line 111
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->e:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 118
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->e:I

    .line 119
    return-void
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 135
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->a:I

    .line 136
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->d()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->a:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 143
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->b:I

    .line 144
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->b:I

    return v0
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 151
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->c:I

    .line 152
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->c:I

    return v0
.end method

.method public f(I)V
    .registers 2

    .prologue
    .line 159
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->d:I

    .line 160
    return-void
.end method

.method public g()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->d:I

    return v0
.end method
