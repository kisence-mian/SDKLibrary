.class public Lcom/mintegral/msdk/video/module/MintegralClickCTAView;
.super Lcom/mintegral/msdk/video/module/MintegralBaseView;
.source "MintegralClickCTAView.java"


# instance fields
.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:F

.field private o:F

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/MintegralClickCTAView;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 119
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a()V

    .line 73
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->f:Z

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralClickCTAView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralClickCTAView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_11
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 61
    const-string v0, "mintegral_reward_clickable_cta"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findLayout(Ljava/lang/String;)I

    move-result v0

    .line 62
    if-ltz v0, :cond_68

    .line 63
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1128
    const-string v0, "mintegral_viewgroup_ctaroot"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->i:Landroid/view/ViewGroup;

    .line 1129
    const-string v0, "mintegral_iv_appicon"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->j:Landroid/widget/ImageView;

    .line 1130
    const-string v0, "mintegral_tv_desc"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->k:Landroid/widget/TextView;

    .line 1131
    const-string v0, "mintegral_tv_install"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->l:Landroid/widget/TextView;

    .line 1132
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->i:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->j:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->k:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->l:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->isNotNULL([Landroid/view/View;)Z

    move-result v0

    .line 64
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->f:Z

    .line 65
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->a()V

    .line 2124
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->setWrapContent()V

    .line 68
    :cond_68
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->n:F

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->o:F

    .line 139
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->p:I

    .line 116
    return-void
.end method

.method public preLoadData()V
    .registers 5

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->f:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_48

    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView$2;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->m:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView$2;-><init>(Lcom/mintegral/msdk/video/module/MintegralClickCTAView;Landroid/widget/ImageView;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 110
    :cond_48
    :goto_48
    return-void

    .line 107
    :cond_49
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->d()V

    goto :goto_48
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->m:Ljava/lang/String;

    .line 50
    return-void
.end method
