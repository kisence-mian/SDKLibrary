.class Lcom/sigmob/sdk/videoAd/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/view/MotionEvent;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getFullClickOnVideo()Z

    move-result p1

    const/4 v0, 0x4

    const-string v1, "useless_video_click"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_192

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickAreaSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    move-result-object p1

    iget-object v4, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->left:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/common/a;->ad()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->right:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sigmob/sdk/common/a;->ad()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    iget-object v7, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->top:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sigmob/sdk/common/a;->ad()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;->bottom:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v6, p1

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/a;->ad()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    mul-float/2addr v6, p1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1f2

    :cond_7c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_18b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    cmpg-float p1, v4, p1

    if-gez p1, :cond_181

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_181

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    cmpg-float p1, v7, p1

    if-gez p1, :cond_181

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    cmpg-float p1, p1, v6

    if-gez p1, :cond_181

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    if-nez v4, :cond_b2

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    :cond_b2
    instance-of v4, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v4, :cond_10c

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v5}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_PROGRESS_"

    invoke-virtual {p1, v5, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_DOWNX_"

    invoke-virtual {p1, v5, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_DOWNY_"

    invoke-virtual {p1, v5, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_UPX_"

    invoke-virtual {p1, v5, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_UPY_"

    invoke-virtual {p1, v5, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10c
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "%d,%d,%d,%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object p1

    if-nez p1, :cond_157

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->s()V

    :cond_157
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object p1

    if-eqz p1, :cond_180

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/h$1;->b:Landroid/app/Activity;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sigmob/sdk/base/a;->c:Lcom/sigmob/sdk/base/a;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v8

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    iget-object v9, p1, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/sigmob/sdk/videoAd/g;->b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_180
    move v2, v3

    :cond_181
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-static {p1, p2, v1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_1f2

    :cond_18b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1f2

    goto :goto_1ec

    :cond_192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_1e6

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1dd

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->d(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object p1

    if-eqz p1, :cond_1dd

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->d(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a()Z

    move-result p1

    if-eqz p1, :cond_1dd

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->d(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->b()Z

    move-result p1

    if-eqz p1, :cond_1d4

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->d(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    goto :goto_1dd

    :cond_1d4
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->d(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    :cond_1dd
    :goto_1dd
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->c:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-static {p1, p2, v1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_1e6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1f2

    :goto_1ec
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$1;->a:Landroid/view/MotionEvent;

    :cond_1f2
    :goto_1f2
    return v3
.end method
