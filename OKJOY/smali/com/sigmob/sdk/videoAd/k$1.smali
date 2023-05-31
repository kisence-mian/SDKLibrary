.class Lcom/sigmob/sdk/videoAd/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/o;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/k$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v8, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getFullClickOnVideo()Z

    move-result v0

    if-eqz v0, :cond_179

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickAreaSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;->left:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;->right:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v7, v3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;->top:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;->bottom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v7, v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v5}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v5

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v5}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_178

    :cond_7b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_178

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1d4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1d4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float v1, v4, v1

    if-gez v1, :cond_1d4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1d4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    instance-of v0, v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v0, :cond_10d

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_PROGRESS_"

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v5}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_DOWNX_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_DOWNY_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_UPX_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v0, "_UPY_"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "%d,%d,%d,%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->c(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sigmob/sdk/base/a;->c:Lcom/sigmob/sdk/base/a;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    iget-object v5, v5, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    move v0, v6

    :goto_169
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    const-string v3, "useless_video_click"

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_178
    :goto_178
    return v6

    :cond_179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_178

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1ba

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->d(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    if-eqz v0, :cond_1ba

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->d(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a()Z

    move-result v0

    if-eqz v0, :cond_1ba

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->d(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b()Z

    move-result v0

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->d(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    :cond_1ba
    :goto_1ba
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    const-string v3, "useless_video_click"

    invoke-virtual {v0, v1, p2, v3, v2}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_178

    :cond_1ca
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$1;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->d(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    goto :goto_1ba

    :cond_1d4
    move v0, v2

    goto :goto_169
.end method
