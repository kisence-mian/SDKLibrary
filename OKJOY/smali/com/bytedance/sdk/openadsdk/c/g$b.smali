.class public Lcom/bytedance/sdk/openadsdk/c/g$b;
.super Ljava/lang/Object;
.source "AdEventThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:I

.field final e:J

.field final f:J


# direct methods
.method constructor <init>(IJJIJJ)V
    .registers 11

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/c/g$b;->a:I

    .line 409
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/c/g$b;->b:J

    .line 410
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/c/g$b;->c:J

    .line 411
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/c/g$b;->d:I

    .line 412
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/c/g$b;->e:J

    .line 413
    iput-wide p9, p0, Lcom/bytedance/sdk/openadsdk/c/g$b;->f:J

    .line 414
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/c/g$b;
    .registers 11

    .prologue
    .line 418
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/g$b;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x3a98

    const/4 v6, 0x5

    const-wide/32 v7, 0xa4cb800

    const-wide/32 v9, 0x493e0

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/c/g$b;-><init>(IJJIJJ)V

    return-object v0
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/c/g$b;
    .registers 11

    .prologue
    .line 429
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/g$b;

    const/4 v1, 0x3

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x3a98

    const/4 v6, 0x5

    const-wide/32 v7, 0xa4cb800

    const-wide/32 v9, 0x493e0

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/c/g$b;-><init>(IJJIJJ)V

    return-object v0
.end method
