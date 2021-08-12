.class public Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;
.super Landroid/widget/FrameLayout;
.source "LandingDislikeToast.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a:Landroid/os/Handler;

    .line 38
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->setVisibility(I)V

    .line 39
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->setClickable(Z)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->setFocusable(Z)V

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;)Landroid/widget/TextView;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    .line 46
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    .line 47
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 49
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 55
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 63
    const-string p1, "#CC000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->addView(Landroid/view/View;)V

    .line 68
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    return-void

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
