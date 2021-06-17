.class final Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsDisplayingAtLeastMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final areaPercentage:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "areaPercentage"
        }
    .end annotation

    .line 800
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 801
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;->areaPercentage:I

    .line 802
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 794
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;-><init>(I)V

    return-void
.end method

.method private getScreenWithoutStatusBarActionBar(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 841
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 843
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 844
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 847
    nop

    .line 848
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 850
    const/4 v2, 0x0

    if-lez v1, :cond_3b

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    .line 853
    :goto_3c
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10102eb

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 856
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 856
    invoke-static {v3, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    goto :goto_67

    .line 858
    :cond_66
    const/4 p1, 0x0

    .line 860
    :goto_67
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-direct {v3, v2, v2, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 806
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;->areaPercentage:I

    .line 810
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 807
    const-string v2, "at least %s percent of the view\'s area is displayed to the user."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 811
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 815
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 816
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 817
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 818
    return v2

    .line 821
    :cond_d
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;->getScreenWithoutStatusBarActionBar(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_20

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_24
    int-to-float v3, v3

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_34

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_38

    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_38
    int-to-float v4, v4

    .line 826
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_67

    .line 828
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float v3, v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 829
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float v4, v4, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 832
    :cond_67
    mul-float v3, v3, v4

    float-to-double v3, v3

    .line 833
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int v1, v1, v0

    int-to-double v0, v1

    .line 834
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v3

    double-to-int v0, v0

    .line 836
    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;->areaPercentage:I

    if-lt v0, v1, :cond_93

    sget-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 837
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withEffectiveVisibility(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    const/4 v2, 0x1

    goto :goto_94

    :cond_93
    nop

    .line 836
    :goto_94
    return v2
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 794
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
