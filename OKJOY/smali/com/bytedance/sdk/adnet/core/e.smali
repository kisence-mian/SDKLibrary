.class public Lcom/bytedance/sdk/adnet/core/e;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/d;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 65
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    .line 66
    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    .line 87
    iput p2, p0, Lcom/bytedance/sdk/adnet/core/e;->c:I

    .line 88
    iput p3, p0, Lcom/bytedance/sdk/adnet/core/e;->d:F

    .line 89
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    return v0
.end method

.method public a(I)Lcom/bytedance/sdk/adnet/core/e;
    .registers 2

    .prologue
    .line 69
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    .line 70
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    .line 121
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    .line 122
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/adnet/core/e;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    .line 123
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/e;->c()Z

    move-result v0

    if-nez v0, :cond_19

    .line 124
    throw p1

    .line 126
    :cond_19
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    return v0
.end method

.method public b(I)Lcom/bytedance/sdk/adnet/core/e;
    .registers 2

    .prologue
    .line 74
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/e;->c:I

    .line 75
    return-object p0
.end method

.method protected c()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/e;->c:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
