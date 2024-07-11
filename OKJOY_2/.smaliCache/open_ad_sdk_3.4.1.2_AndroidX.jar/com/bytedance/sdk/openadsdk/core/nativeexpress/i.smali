.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
.super Ljava/lang/Object;
.source "Mode.java"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IFII)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:I

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    .line 10
    const/16 v0, 0x258

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    .line 11
    const/16 v0, 0x96

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e:I

    .line 14
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    .line 15
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    .line 16
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    .line 17
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e:I

    .line 18
    return-void
.end method

.method public constructor <init>(IIFII)V
    .registers 7

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:I

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    .line 10
    const/16 v0, 0x258

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    .line 11
    const/16 v0, 0x96

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e:I

    .line 21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    .line 22
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:I

    .line 23
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    .line 24
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    .line 25
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e:I

    .line 26
    return-void
.end method
