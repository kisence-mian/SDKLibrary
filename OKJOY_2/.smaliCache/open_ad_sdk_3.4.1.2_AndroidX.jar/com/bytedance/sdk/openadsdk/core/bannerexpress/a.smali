.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;
.super Landroid/widget/FrameLayout;
.source "BannerExpressView.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field protected c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field protected d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected e:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field protected f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field protected g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

.field protected h:I

.field protected i:Z

.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->j:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 47
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a()V

    .line 49
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Landroid/animation/ObjectAnimator;
    .registers 6

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getWidth()I

    move-result v0

    .line 175
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "translationX"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->g()V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Landroid/animation/ObjectAnimator;
    .registers 5

    .line 184
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getWidth()I

    move-result v0

    .line 185
    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float v0, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "translationX"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 186
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    return-object p1
.end method

.method private g()V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 249
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 250
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 252
    if-eqz v0, :cond_15

    .line 253
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->removeView(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 257
    :cond_15
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 53
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method protected a(FF)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 128
    if-nez v0, :cond_19

    .line 129
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 131
    :cond_19
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6

    .line 57
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->j:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 58
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method public b()Z
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c()V
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    .line 214
    :cond_7
    return-void
.end method

.method public d()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 144
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k()V

    .line 146
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 148
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_1d

    .line 149
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->removeView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->k()V

    .line 151
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 153
    :cond_1d
    return-void
.end method

.method public e()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    .line 140
    :cond_7
    return-void
.end method

.method protected f()V
    .registers 4

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->i:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_33

    .line 223
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 225
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->h:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->i:Z
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    .line 232
    :cond_33
    goto :goto_35

    .line 229
    :catchall_34
    move-exception v0

    .line 233
    :goto_35
    return-void
.end method

.method public getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object v0
.end method

.method public getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object v0
.end method

.method public setDuration(I)V
    .registers 2

    .line 165
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->h:I

    .line 166
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 3

    .line 91
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 122
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->g:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    .line 88
    return-void
.end method
