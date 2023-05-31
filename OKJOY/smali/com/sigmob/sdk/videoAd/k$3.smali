.class Lcom/sigmob/sdk/videoAd/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/k$3;->a:Lcom/sigmob/sdk/videoAd/g;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/k$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 11

    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->J(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->K(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_19
    const-string v0, "ignore invalid click"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    const-string v2, "endcard_click"

    invoke-virtual {v0, v1, p2, v2, v4}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    if-nez p1, :cond_111

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "%d,%d,%d,%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    :goto_68
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    instance-of v0, v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v0, :cond_b9

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_DOWNX_"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_DOWNY_"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_UPX_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v0, "_UPY_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/p;->b:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/p;->a()I

    move-result v1

    if-ne v0, v1, :cond_14b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->f:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_14b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->a:Lcom/sigmob/sdk/videoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$3;->b:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    iget-object v5, v5, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_111
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "%d,%d,%d,%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    goto/16 :goto_68

    :cond_14b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$3;->c:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0, v4}, Lcom/sigmob/sdk/videoAd/k;->f(Lcom/sigmob/sdk/videoAd/k;Z)Z

    goto/16 :goto_1e
.end method
