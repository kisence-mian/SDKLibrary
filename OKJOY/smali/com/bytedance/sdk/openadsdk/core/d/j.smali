.class public Lcom/bytedance/sdk/openadsdk/core/d/j;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/j;)Lcom/bytedance/sdk/openadsdk/TTImage;
    .registers 5

    .prologue
    .line 46
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->d()Z

    move-result v0

    if-nez v0, :cond_a

    .line 47
    :cond_8
    const/4 v0, 0x0

    .line 49
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTImage;-><init>(IILjava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 29
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->b:I

    .line 30
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->c:I

    .line 38
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->b:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->c:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
