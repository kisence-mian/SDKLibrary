.class public Lcom/bytedance/sdk/openadsdk/component/splash/TsView;
.super Landroid/widget/FrameLayout;
.source "TsView.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

.field private c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/TsView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v1, "tt_splash_view"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_ad_gif"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_skip_btn"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_video_ad_mute"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_video_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->e:Landroid/widget/FrameLayout;

    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_express_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->f:Landroid/widget/FrameLayout;

    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_ad_logo"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->g:Landroid/widget/ImageView;

    .line 70
    return-void
.end method


# virtual methods
.method getCountDownView()Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    return-object v0
.end method

.method getDislikeView()Landroid/view/View;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    return-object v0
.end method

.method getVideoContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 140
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/TsView;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method setAdlogoViewVisibility(I)V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->g:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 109
    return-void
.end method

.method setCountDownTime(I)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setCountDownTime(I)V

    .line 92
    :cond_7
    return-void
.end method

.method setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method setExpressView(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .registers 3

    .line 78
    if-nez p1, :cond_3

    .line 79
    return-void

    .line 81
    :cond_3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 83
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setExpressViewVisibility(I)V

    .line 84
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    .line 86
    return-void
.end method

.method setExpressViewVisibility(I)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->f:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 117
    return-void
.end method

.method setGifView([B)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a([BZ)V

    .line 127
    return-void
.end method

.method setImageViewVisibility(I)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 113
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 150
    const-string p1, "\u4e0d\u5141\u8bb8\u5728Splash\u5e7f\u544a\u4e2d\u6ce8\u518cOnClickListener"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method final setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 165
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 155
    const-string p1, "\u4e0d\u5141\u8bb8\u5728Splash\u5e7f\u544a\u4e2d\u6ce8\u518cOnTouchListener"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method final setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    return-void
.end method

.method setSkipIconVisibility(I)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 96
    return-void
.end method

.method final setSkipListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    if-eqz v0, :cond_7

    .line 170
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_7
    return-void
.end method

.method setVideoViewVisibility(I)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 105
    return-void
.end method

.method final setVoiceViewImageResource(I)V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 182
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    :cond_7
    return-void
.end method

.method final setVoiceViewListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_7
    return-void
.end method
