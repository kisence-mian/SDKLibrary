.class public Lcom/bytedance/sdk/openadsdk/i/c;
.super Ljava/lang/Object;
.source "IncrementalTimeout.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# virtual methods
.method public a(I)J
    .registers 8

    .line 19
    if-gtz p1, :cond_5

    .line 20
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->a:J

    return-wide v0

    .line 22
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->a:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/i/c;->b:J

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/i/c;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method
