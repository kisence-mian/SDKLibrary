.class public Lcom/anythink/core/activity/component/LoadingView;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/anythink/core/activity/component/LoadingView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/anythink/core/activity/component/LoadingView;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/anythink/core/activity/component/LoadingView;->a()V

    .line 40
    return-void
.end method

.method private a()V
    .registers 5

    .line 43
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "core_loading"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/component/LoadingView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :try_start_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-lt v0, v1, :cond_23

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/anythink/core/activity/component/LoadingView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_29

    .line 50
    :cond_23
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/anythink/core/activity/component/LoadingView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    .line 56
    goto :goto_29

    .line 52
    :catch_28
    move-exception v0

    .line 57
    :goto_29
    invoke-static {p0}, Lcom/anythink/core/activity/component/LoadingView;->a(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .registers 9

    .line 62
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 63
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 64
    const/4 v1, -0x1

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 65
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    const-wide/16 v0, 0x3e8

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 67
    invoke-virtual {p0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    return-void
.end method


# virtual methods
.method public startAnimation()V
    .registers 1

    .line 71
    invoke-static {p0}, Lcom/anythink/core/activity/component/LoadingView;->a(Landroid/view/View;)V

    .line 72
    return-void
.end method
