.class public Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;
.super Lcom/mintegral/msdk/video/module/MintegralBaseView;
.source "MintegralNativeEndCardView.java"


# instance fields
.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 131
    if-nez p1, :cond_b

    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->init(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->preLoadData()V

    .line 143
    :goto_a
    return-void

    .line 135
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->addView(Landroid/view/View;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b(Landroid/view/View;)Z

    .line 140
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a()V

    .line 141
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->d()V

    goto :goto_a
.end method

.method private b(Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 246
    :try_start_1
    const-string v0, "mintegral_iv_adbanner"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->k:Landroid/widget/ImageView;

    .line 247
    const-string v0, "mintegral_iv_icon"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->l:Landroid/widget/ImageView;

    .line 248
    const-string v0, "mintegral_tv_apptitle"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->m:Landroid/widget/TextView;

    .line 249
    const-string v0, "mintegral_tv_appdesc"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->n:Landroid/widget/TextView;

    .line 250
    const-string v0, "mintegral_sv_starlevel"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->o:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    .line 251
    const-string v0, "mintegral_iv_close"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->p:Landroid/view/View;

    .line 252
    const-string v0, "mintegral_tv_cta"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->q:Landroid/view/View;

    .line 253
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->k:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->l:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->m:Landroid/widget/TextView;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->n:Landroid/widget/TextView;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->o:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->p:Landroid/view/View;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->q:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->isNotNULL([Landroid/view/View;)Z
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_88} :catch_8a

    move-result v0

    .line 257
    :goto_89
    return v0

    .line 254
    :catch_8a
    move-exception v0

    .line 255
    const-string v2, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 257
    goto :goto_89
.end method

.method private d()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x44960000    # 1200.0f

    const v3, 0x441cc000    # 627.0f

    .line 159
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->f:Z

    if-eqz v0, :cond_60

    .line 162
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->f(Landroid/content/Context;)F

    move-result v1

    .line 163
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 164
    const v0, 0x3f19999a    # 0.6f

    mul-float v2, v1, v0

    .line 165
    mul-float v0, v2, v3

    div-float v1, v0, v4

    .line 168
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v3

    .line 169
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->j:Landroid/view/ViewGroup;

    const-string v4, "mintegral_view_shadow"

    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 171
    if-nez v0, :cond_45

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 174
    :cond_45
    int-to-float v3, v3

    sub-float v3, v2, v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move v0, v1

    move v1, v2

    .line 179
    :goto_4d
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 180
    if-nez v2, :cond_5a

    .line 181
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 183
    :cond_5a
    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    :cond_60
    return-void

    .line 177
    :cond_61
    mul-float v0, v1, v3

    div-float/2addr v0, v4

    goto :goto_4d
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->f:Z

    if-eqz v0, :cond_2c

    .line 196
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->p:Landroid/view/View;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->q:Landroid/view/View;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$2;-><init>(Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$3;-><init>(Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$4;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$4;-><init>(Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_2c
    return-void
.end method

.method public canBackPress()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->p:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 79
    .line 1261
    const-string v0, "mintegral_reward_endcard_native_hor"

    .line 1262
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1263
    const-string v0, "mintegral_reward_endcard_native_land"

    .line 1265
    :cond_b
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->findLayout(Ljava/lang/String;)I

    move-result v0

    .line 80
    if-lez v0, :cond_34

    .line 2146
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2147
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->j:Landroid/view/ViewGroup;

    .line 2148
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->addView(Landroid/view/View;)V

    .line 2149
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->j:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    .line 81
    :goto_2c
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->f:Z

    .line 82
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a()V

    .line 83
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->d()V

    .line 85
    :cond_34
    return-void

    .line 2151
    :cond_35
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->i:Landroid/view/ViewGroup;

    .line 2152
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->addView(Landroid/view/View;)V

    .line 2153
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->i:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    goto :goto_2c
.end method

.method public notifyShowListener()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x6e

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->d:I

    .line 111
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " native onSelfConfigurationChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->removeView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->j:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a(Landroid/view/View;)V

    .line 120
    :goto_2c
    return-void

    .line 117
    :cond_2d
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->i:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a(Landroid/view/View;)V

    goto :goto_2c
.end method

.method public preLoadData()V
    .registers 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->f:Z

    if-eqz v0, :cond_7c

    .line 90
    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/e;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->k:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mintegral/msdk/video/module/a/a/e;-><init>(Landroid/widget/ImageView;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 93
    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/j;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->l:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a/j;-><init>(Landroid/widget/ImageView;I)V

    .line 94
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->o:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->removeAllViews()V

    .line 99
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v0

    .line 100
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_77

    .line 101
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 103
    :cond_77
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->o:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->initScore(D)V

    .line 105
    :cond_7c
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->r:Ljava/lang/String;

    .line 67
    return-void
.end method
