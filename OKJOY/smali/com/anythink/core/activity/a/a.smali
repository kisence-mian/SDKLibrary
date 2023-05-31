.class public final Lcom/anythink/core/activity/a/a;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/anythink/core/activity/a/a;->b()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/anythink/core/activity/a/a;->b()V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/anythink/core/activity/a/a;->b()V

    .line 36
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 58
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 59
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 60
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 62
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "core_loading"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/a;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :try_start_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    .line 43
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/activity/a/a;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_2c

    .line 53
    :goto_22
    invoke-static {p0}, Lcom/anythink/core/activity/a/a;->a(Landroid/view/View;)V

    .line 55
    return-void

    .line 46
    :cond_26
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_28
    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/activity/a/a;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_22

    :catch_2c
    move-exception v0

    goto :goto_22
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/anythink/core/activity/a/a;->a(Landroid/view/View;)V

    .line 68
    return-void
.end method
