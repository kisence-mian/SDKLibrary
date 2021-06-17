.class public final Landroidx/test/espresso/assertion/PositionAssertions;
.super Ljava/lang/Object;
.source "PositionAssertions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/assertion/PositionAssertions$Position;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PositionAssertions"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 1

    .line 46
    invoke-static {p0}, Landroidx/test/espresso/assertion/PositionAssertions;->getTopViewGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static findView(Lorg/hamcrest/Matcher;Landroid/view/View;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "toView",
            "root"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 300
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$2;

    invoke-direct {v0, p0}, Landroidx/test/espresso/assertion/PositionAssertions$2;-><init>(Lorg/hamcrest/Matcher;)V

    .line 309
    nop

    .line 310
    invoke-static {p1}, Landroidx/test/espresso/util/TreeIterables;->breadthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->filter(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    const/4 v1, 0x0

    .line 312
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 313
    if-nez v1, :cond_28

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_19

    .line 315
    :cond_28
    new-instance v2, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;-><init>()V

    .line 316
    invoke-virtual {v2, p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withRootView(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object p1

    .line 317
    invoke-virtual {p1, p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object p0

    .line 318
    invoke-virtual {p0, v1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withView1(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object p0

    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withView2(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object p0

    const-class p1, Landroid/view/View;

    .line 320
    invoke-static {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->withOtherAmbiguousViews([Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->build()Landroidx/test/espresso/AmbiguousViewMatcherException;

    move-result-object p0

    throw p0

    .line 326
    :cond_54
    if-eqz v1, :cond_57

    .line 332
    return-object v1

    .line 327
    :cond_57
    new-instance v0, Landroidx/test/espresso/NoMatchingViewException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/NoMatchingViewException$Builder;-><init>()V

    .line 328
    invoke-virtual {v0, p0}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p0, p1}, Landroidx/test/espresso/NoMatchingViewException$Builder;->withRootView(Landroid/view/View;)Landroidx/test/espresso/NoMatchingViewException$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Landroidx/test/espresso/NoMatchingViewException$Builder;->build()Landroidx/test/espresso/NoMatchingViewException;

    move-result-object p0

    goto :goto_6a

    :goto_69
    throw p0

    :goto_6a
    goto :goto_69
.end method

.method private static getTopViewGroup(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 337
    const/4 v0, 0x0

    .line 338
    :goto_5
    if-eqz p0, :cond_13

    .line 339
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 340
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 342
    :cond_e
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_5

    .line 344
    :cond_13
    return-object v0
.end method

.method public static isAbove(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-static {p0}, Landroidx/test/espresso/assertion/PositionAssertions;->isCompletelyAbove(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isBelow(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-static {p0}, Landroidx/test/espresso/assertion/PositionAssertions;->isCompletelyBelow(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isBottomAlignedWith(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 246
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->BOTTOM_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isCompletelyAbove(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 167
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isCompletelyBelow(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 179
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isCompletelyLeftOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 61
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isCompletelyRightOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 73
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isLeftAlignedWith(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 140
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->LEFT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isLeftOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-static {p0}, Landroidx/test/espresso/assertion/PositionAssertions;->isCompletelyLeftOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isPartiallyAbove(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 191
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isPartiallyBelow(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 203
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isPartiallyLeftOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 113
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isPartiallyRightOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 125
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method static isRelativePosition(Landroid/view/View;Landroid/view/View;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view1",
            "view2",
            "position"
        }
    .end annotation

    .line 348
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 349
    new-array v0, v0, [I

    .line 350
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 353
    sget-object v2, Landroidx/test/espresso/assertion/PositionAssertions$3;->$SwitchMap$androidx$test$espresso$assertion$PositionAssertions$Position:[I

    invoke-virtual {p2}, Landroidx/test/espresso/assertion/PositionAssertions$Position;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_da

    .line 379
    return v3

    .line 377
    :pswitch_19
    aget p2, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p2, p0

    aget p0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    if-ne p2, p0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    return v2

    .line 375
    :pswitch_2c
    aget p0, v1, v2

    aget p1, v0, v2

    if-ne p0, p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    return v2

    .line 373
    :pswitch_35
    aget p2, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p2, p0

    aget p0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    if-ne p2, p0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    return v2

    .line 371
    :pswitch_48
    aget p0, v1, v3

    aget p1, v0, v3

    if-ne p0, p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    return v2

    .line 369
    :pswitch_51
    aget p0, v0, v2

    aget p2, v1, v2

    if-ge p0, p2, :cond_63

    aget p0, v1, v2

    aget p2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    if-ge p0, p2, :cond_63

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    return v2

    .line 367
    :pswitch_65
    aget p1, v1, v2

    aget p2, v0, v2

    if-ge p1, p2, :cond_77

    aget p1, v0, v2

    aget p2, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p2, p0

    if-ge p1, p2, :cond_77

    goto :goto_78

    :cond_77
    const/4 v2, 0x0

    :goto_78
    return v2

    .line 365
    :pswitch_79
    aget p0, v0, v3

    aget p2, v1, v3

    if-ge p0, p2, :cond_8b

    aget p0, v1, v3

    aget p2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p2, p1

    if-ge p0, p2, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v2, 0x0

    :goto_8c
    return v2

    .line 363
    :pswitch_8d
    aget p1, v1, v3

    aget p2, v0, v3

    if-ge p1, p2, :cond_9f

    aget p1, v0, v3

    aget p2, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p2, p0

    if-ge p1, p2, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v2, 0x0

    :goto_a0
    return v2

    .line 361
    :pswitch_a1
    aget p0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    aget p1, v1, v2

    if-gt p0, p1, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v2, 0x0

    :goto_ae
    return v2

    .line 359
    :pswitch_af
    aget p1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p1, p0

    aget p0, v0, v2

    if-gt p1, p0, :cond_bb

    goto :goto_bc

    :cond_bb
    const/4 v2, 0x0

    :goto_bc
    return v2

    .line 357
    :pswitch_bd
    aget p0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    aget p1, v1, v3

    if-gt p0, p1, :cond_c9

    goto :goto_ca

    :cond_c9
    const/4 v2, 0x0

    :goto_ca
    return v2

    .line 355
    :pswitch_cb
    aget p1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p1, p0

    aget p0, v0, v3

    if-gt p1, p0, :cond_d7

    goto :goto_d8

    :cond_d7
    const/4 v2, 0x0

    :goto_d8
    return v2

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_bd
        :pswitch_af
        :pswitch_a1
        :pswitch_8d
        :pswitch_79
        :pswitch_65
        :pswitch_51
        :pswitch_48
        :pswitch_35
        :pswitch_2c
        :pswitch_19
    .end packed-switch
.end method

.method public static isRightAlignedWith(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 155
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->RIGHT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isRightOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-static {p0}, Landroidx/test/espresso/assertion/PositionAssertions;->isCompletelyRightOf(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method public static isTopAlignedWith(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcher"
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

    .line 261
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->TOP_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {p0, v0}, Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;

    move-result-object p0

    return-object p0
.end method

.method static relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "viewMatcher",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/test/espresso/assertion/PositionAssertions$Position;",
            ")",
            "Landroidx/test/espresso/ViewAssertion;"
        }
    .end annotation

    .line 266
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$1;

    invoke-direct {v0, p1, p0}, Landroidx/test/espresso/assertion/PositionAssertions$1;-><init>(Landroidx/test/espresso/assertion/PositionAssertions$Position;Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
