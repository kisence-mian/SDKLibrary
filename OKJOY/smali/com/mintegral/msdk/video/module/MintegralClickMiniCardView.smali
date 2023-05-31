.class public Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;
.super Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;
.source "MintegralClickMiniCardView.java"


# instance fields
.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->q:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->q:Z

    .line 46
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    .prologue
    const v3, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 136
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v1

    .line 138
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 139
    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 141
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected final d()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4

    .prologue
    const/4 v1, -0x2

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    return-object v0
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e()V

    .line 68
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->f:Z

    if-eqz v0, :cond_19

    .line 70
    const-string v0, "mintegral_reward_minicard_bg"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->findColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->a(Landroid/view/View;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setClickable(Z)V

    .line 75
    :cond_19
    return-void
.end method

.method protected final f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_2e

    .line 81
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_11

    .line 83
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 86
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/j;->a()Lcom/mintegral/msdk/videocommon/download/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object v0, v1

    .line 92
    :cond_2e
    return-object v0
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->f:Z

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->a(Landroid/view/View;)V

    .line 54
    :cond_9
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    return-void
.end method

.method public preLoadData()V
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->preLoadData()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setCloseVisible(I)V

    .line 99
    return-void
.end method

.method public resizeMiniCard(II)V
    .registers 5

    .prologue
    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_7

    .line 212
    :cond_6
    :goto_6
    return-void

    .line 168
    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 171
    if-lez p1, :cond_6

    if-lez p2, :cond_6

    if-gt p1, v1, :cond_6

    if-gt p2, v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 174
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6
.end method

.method public setMiniCardLocation(IIII)V
    .registers 6

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->q:Z

    .line 161
    invoke-virtual {p0, p3, p4}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->resizeMiniCard(II)V

    .line 162
    return-void
.end method

.method public setMintegralClickMiniCardViewClickable(Z)V
    .registers 2

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setClickable(Z)V

    .line 156
    return-void
.end method

.method public setMintegralClickMiniCardViewTransparent()V
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setBackgroundColor(I)V

    .line 152
    return-void
.end method

.method public setRadius(I)V
    .registers 5

    .prologue
    .line 216
    if-lez p1, :cond_2f

    .line 217
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 219
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_30

    .line 221
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2f

    .line 226
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setClipToOutline(Z)V

    .line 231
    :cond_2f
    return-void

    .line 223
    :cond_30
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23
.end method

.method public webviewshow()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_e

    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_e
    return-void
.end method
