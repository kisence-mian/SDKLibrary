.class Lcom/sigmob/sdk/splash/e;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:I

.field public b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/e;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_22

    new-instance v0, Lcom/sigmob/sdk/splash/i;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/splash/i;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_9

    :cond_22
    new-instance v0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;-><init>(Landroid/content/Context;)V

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/splash/e;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/splash/e;->a:I

    return v0
.end method
