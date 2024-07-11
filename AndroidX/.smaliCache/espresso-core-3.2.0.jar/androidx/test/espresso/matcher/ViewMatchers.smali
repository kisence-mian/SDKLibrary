.class public final Landroidx/test/espresso/matcher/ViewMatchers;
.super Ljava/lang/Object;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasErrorTextMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasLinksMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasImeActionMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$SupportsInputMethodsMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsRootMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasMinimumChildCountMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithChildMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithParentMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithAlphaMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsClickableMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasContentDescriptionMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithCheckBoxStateMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithHintMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithTagValueMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionTextMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsSelectedMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$HasFocusMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsFocusableMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsEnabledMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayedMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithClassNameMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$IsAssignableFromMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithTextMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$WithIdMatcher;,
        Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4000(I)Z
    .registers 1

    .line 63
    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->isViewIdGenerated(I)Z

    move-result p0

    return p0
.end method

.method public static assertThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "matcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 516
    const-string v0, ""

    invoke-static {v0, p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 517
    return-void
.end method

.method public static assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "actual",
            "matcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 527
    invoke-interface {p2, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 528
    new-instance v0, Lorg/hamcrest/StringDescription;

    invoke-direct {v0}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 529
    nop

    .line 530
    invoke-interface {v0, p0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p0

    .line 531
    const-string v1, "\nExpected: "

    invoke-interface {p0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p0

    .line 532
    invoke-interface {p0, p2}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    move-result-object p0

    .line 533
    const-string p2, "\n     Got: "

    invoke-interface {p0, p2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 534
    instance-of p0, p1, Landroid/view/View;

    if-eqz p0, :cond_2d

    .line 535
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    goto :goto_30

    .line 537
    :cond_2d
    invoke-interface {v0, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 539
    :goto_30
    const-string p0, "\n"

    invoke-interface {v0, p0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 540
    new-instance p0, Ljunit/framework/AssertionFailedError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 542
    :cond_3f
    return-void
.end method

.method public static hasBackground(I)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "drawableId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1329
    new-instance v0, Landroidx/test/espresso/matcher/HasBackgroundMatcher;

    invoke-direct {v0, p0}, Landroidx/test/espresso/matcher/HasBackgroundMatcher;-><init>(I)V

    return-object v0
.end method

.method public static hasChildCount(I)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "childCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasContentDescription()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasContentDescriptionMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasContentDescriptionMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasDescendant(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descendantMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasErrorText(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expectedError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 597
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->hasErrorText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasErrorText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stringMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasErrorTextMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasErrorTextMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasFocus()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasFocusMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasFocusMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasImeAction(I)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imeAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->hasImeAction(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static hasImeAction(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imeActionMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasImeActionMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasImeActionMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasLinks()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasLinksMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasLinksMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasMinimumChildCount(I)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "minChildCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasMinimumChildCountMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasMinimumChildCountMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasSibling(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "siblingMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static hasTextColor(I)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "colorResId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1339
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$1;

    const-class v1, Landroid/widget/TextView;

    invoke-direct {v0, v1, p0}, Landroidx/test/espresso/matcher/ViewMatchers$1;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public static isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsAssignableFromMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsAssignableFromMatcher;-><init>(Ljava/lang/Class;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isChecked()Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 356
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withCheckBoxState(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isClickable()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsClickableMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsClickableMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isCompletelyDisplayed()Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 103
    const/16 v0, 0x64

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isDescendantOfA(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ancestorMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isDisplayed()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayedMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayedMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "areaPercentage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 114
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-gt p0, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    const-string v3, "Cannot have over 100 percent: %s"

    invoke-static {v2, v3, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 115
    if-lez p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "Must have a positive, non-zero value: %s"

    invoke-static {v0, v1, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 116
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDisplayingAtLeastMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isEnabled()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsEnabledMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsEnabledMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isFocusable()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsFocusableMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsFocusableMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isJavascriptEnabled()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 578
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isNotChecked()Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withCheckBoxState(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isRoot()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsRootMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsRootMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static isSelected()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$IsSelectedMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$IsSelectedMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method private static isViewIdGenerated(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1740
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_d

    const v0, 0xffffff

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static supportsInputMethods()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 481
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$SupportsInputMethodsMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$SupportsInputMethodsMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withAlpha(F)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alpha"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 442
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithAlphaMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithAlphaMatcher;-><init>(FLandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method private static withCheckBoxState(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "checkStateMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithCheckBoxStateMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithCheckBoxStateMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withChild(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "childMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithChildMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithChildMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withClassName(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "classNameMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithClassNameMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithClassNameMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withContentDescription(I)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withContentDescription(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionTextMatcher;

    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionTextMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withContentDescription(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charSequenceMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withEffectiveVisibility(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "visibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/matcher/ViewMatchers$Visibility;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withHint(I)Lorg/hamcrest/Matcher;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->GET_HINT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withHint(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hintText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withHint(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withHint(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stringMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithHintMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithHintMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withId(I)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withId(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "integerMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithIdMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithIdMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withInputType(I)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "inputType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withParent(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parentMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 452
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithParentMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithParentMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withParentIndex(I)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 607
    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Index %s must be >= 0"

    invoke-static {v0, v1, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 608
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withResourceName(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withResourceName(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withResourceName(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stringMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withSpinnerText(I)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withSpinnerText(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 573
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withSpinnerText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withSpinnerText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stringMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 563
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withSubstring(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "substring"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-static {p0}, Lorg/hamcrest/Matchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withTagKey(I)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-static {}, Lorg/hamcrest/Matchers;->notNullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withTagKey(ILorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withTagKey(ILorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "objectMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withTagValue(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tagValueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagValueMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithTagValueMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withText(I)Lorg/hamcrest/Matcher;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->GET_TEXT:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method

.method public static withText(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stringMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Landroidx/test/espresso/matcher/ViewMatchers$WithTextMatcher;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithTextMatcher;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V

    return-object v0
.end method
