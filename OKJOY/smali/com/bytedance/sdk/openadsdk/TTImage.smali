.class public Lcom/bytedance/sdk/openadsdk/TTImage;
.super Ljava/lang/Object;
.source "TTImage.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    .line 15
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    .line 16
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    if-lez v0, :cond_16

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
