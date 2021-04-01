.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
.super Ljava/lang/Object;
.source "Mode.java"


# instance fields
.field public a:I

.field public b:F

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IFII)V
    .registers 6

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    .line 9
    const/16 v0, 0x258

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:I

    .line 10
    const/16 v0, 0x96

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    .line 13
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    .line 14
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    .line 15
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:I

    .line 16
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    .line 17
    return-void
.end method
