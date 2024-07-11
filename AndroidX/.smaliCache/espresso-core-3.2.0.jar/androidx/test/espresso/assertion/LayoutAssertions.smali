.class public final Landroidx/test/espresso/assertion/LayoutAssertions;
.super Ljava/lang/Object;
.source "LayoutAssertions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 1

    .line 52
    invoke-static {p0}, Landroidx/test/espresso/assertion/LayoutAssertions;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static getRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 98
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    sub-int/2addr v2, v4

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    sub-int/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    return-object v1

    nop

    :array_26
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static noEllipsizedText()Landroidx/test/espresso/ViewAssertion;
    .registers 2

    .line 61
    const-class v0, Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/matcher/LayoutMatchers;->hasEllipsizedText()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Lorg/hamcrest/Matchers;->not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/assertion/ViewAssertions;->selectedDescendantsMatch(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v0

    return-object v0
.end method

.method public static noMultilineButtons()Landroidx/test/espresso/ViewAssertion;
    .registers 2

    .line 69
    const-class v0, Landroid/widget/Button;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/matcher/LayoutMatchers;->hasMultilineText()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Lorg/hamcrest/Matchers;->not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/assertion/ViewAssertions;->selectedDescendantsMatch(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v0

    return-object v0
.end method

.method public static noOverlaps()Landroidx/test/espresso/ViewAssertion;
    .registers 3

    .line 89
    sget-object v0, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->VISIBLE:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 91
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withEffectiveVisibility(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)Lorg/hamcrest/Matcher;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    .line 92
    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v1

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroidx/test/espresso/assertion/LayoutAssertions;->noOverlaps(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v0

    return-object v0
.end method

.method public static noOverlaps(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/ViewAssertion;"
        }
    .end annotation

    .line 79
    new-instance v0, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/LayoutAssertions$1;)V

    return-object v0
.end method
