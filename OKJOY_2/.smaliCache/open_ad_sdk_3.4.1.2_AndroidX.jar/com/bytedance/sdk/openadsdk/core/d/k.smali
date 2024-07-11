.class public Lcom/bytedance/sdk/openadsdk/core/d/k;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/TTImage;
    .registers 8

    .line 55
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_20

    .line 58
    :cond_9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d()D

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TTImage;-><init>(IILjava/lang/String;D)V

    return-object v0

    .line 56
    :cond_20
    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .registers 3

    .line 46
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->d:D

    .line 47
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->b:I

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public b()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->c:I

    .line 39
    return-void
.end method

.method public c()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->c:I

    return v0
.end method

.method public d()D
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->d:D

    return-wide v0
.end method

.method public e()Z
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->b:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->c:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
