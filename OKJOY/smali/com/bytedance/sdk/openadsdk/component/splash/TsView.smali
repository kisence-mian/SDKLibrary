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

.field private g:Landroid/widget/TextView;

.field private h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a()V

    .line 47
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 63
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_view"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_ad_gif"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_skip_btn"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_video_ad_mute"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_video_container"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->e:Landroid/widget/FrameLayout;

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_splash_express_container"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->f:Landroid/widget/FrameLayout;

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a:Landroid/content/Context;

    const-string v2, "tt_ad_logo"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->g:Landroid/widget/TextView;

    .line 71
    return-void
.end method


# virtual methods
.method getCountDownView()Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    return-object v0
.end method

.method getDislikeView()Landroid/view/View;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    return-object v0
.end method

.method getVideoContainer()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method setAdlogoViewVisibility(I)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->g:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 110
    return-void
.end method

.method setCountDownTime(I)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setCountDownTime(I)V

    .line 93
    :cond_9
    return-void
.end method

.method setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method setExpressView(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 79
    if-nez p1, :cond_5

    .line 87
    :goto_4
    return-void

    .line 82
    :cond_5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setExpressViewVisibility(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVideoViewVisibility(I)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setImageViewVisibility(I)V

    goto :goto_4
.end method

.method setExpressViewVisibility(I)V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->f:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method setGifView([B)V
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a([BZ)V

    .line 128
    return-void
.end method

.method setImageViewVisibility(I)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->b:Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 114
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    const-string v0, "\u4e0d\u5141\u8bb8\u5728Splash\u5e7f\u544a\u4e2d\u6ce8\u518cOnClickListener"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method final setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3

    .prologue
    .line 145
    const-string v0, "\u4e0d\u5141\u8bb8\u5728Splash\u5e7f\u544a\u4e2d\u6ce8\u518cOnTouchListener"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method final setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    return-void
.end method

.method setSkipIconVisibility(I)V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 97
    return-void
.end method

.method final setSkipListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_9
    return-void
.end method

.method setVideoViewVisibility(I)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 106
    return-void
.end method

.method final setVoiceViewImageResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    :cond_9
    return-void
.end method

.method final setVoiceViewListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_9
    return-void
.end method
