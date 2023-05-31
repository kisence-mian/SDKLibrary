.class public Lcom/bytedance/sdk/openadsdk/TTLocation;
.super Ljava/lang/Object;
.source "TTLocation.java"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->a:D

    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->b:D

    .line 16
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->a:D

    .line 17
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->b:D

    .line 18
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->a:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->b:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .registers 4

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->a:D

    .line 26
    return-void
.end method

.method public setLongitude(D)V
    .registers 4

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTLocation;->b:D

    .line 34
    return-void
.end method
