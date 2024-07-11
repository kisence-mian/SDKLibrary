.class public Lcom/bytedance/sdk/openadsdk/TTImage;
.super Ljava/lang/Object;
.source "TTImage.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:D


# direct methods
.method public constructor <init>(IILjava/lang/String;D)V
    .registers 8

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->d:D

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    .line 16
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    .line 17
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    .line 18
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->d:D

    .line 19
    return-void
.end method


# virtual methods
.method public getDuration()D
    .registers 3

    .line 34
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->d:D

    return-wide v0
.end method

.method public getHeight()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 38
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    if-lez v0, :cond_14

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
