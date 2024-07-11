.class Lcom/sigmob/sdk/videoAd/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/CreativeWebView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$4;->a:Lcom/sigmob/sdk/videoAd/g;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/h$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 12

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->N(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->O(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_13b

    :cond_16
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    const-string v1, "endcard_click"

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-string v5, "%d,%d,%d,%d"

    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    new-array v4, v4, [Ljava/lang/Object;

    if-nez p1, :cond_5f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8f

    :cond_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8f
    iput-object v0, v6, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v1, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_d9

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_DOWNX_"

    invoke-virtual {v0, v3, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_DOWNY_"

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_UPX_"

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_UPY_"

    invoke-virtual {v0, p2, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1, v2}, Lcom/sigmob/sdk/videoAd/h;->f(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/i;->a()I

    move-result p2

    if-ne p1, p2, :cond_135

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_135

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/sigmob/sdk/base/common/j;->f:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result p2

    if-eq p1, p2, :cond_135

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$4;->a:Lcom/sigmob/sdk/videoAd/g;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$4;->b:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v7

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    iget-object v8, p1, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_13a

    :cond_135
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$4;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1, v2}, Lcom/sigmob/sdk/videoAd/h;->g(Lcom/sigmob/sdk/videoAd/h;Z)Z

    :goto_13a
    return-void

    :cond_13b
    :goto_13b
    const-string p1, "ignore invalid click"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->w(Ljava/lang/String;)V

    return-void
.end method
