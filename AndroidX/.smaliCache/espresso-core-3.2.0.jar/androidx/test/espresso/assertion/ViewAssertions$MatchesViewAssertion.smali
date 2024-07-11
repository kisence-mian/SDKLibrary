.class Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;
.super Ljava/lang/Object;
.source "ViewAssertions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAssertion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/assertion/ViewAssertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchesViewAssertion"
.end annotation


# instance fields
.field final viewMatcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 2
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/ViewAssertions$1;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1}, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;-><init>(Lorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "noViewException"
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/hamcrest/StringDescription;

    invoke-direct {v0}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 93
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 94
    iget-object v1, p0, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v1, v0}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 95
    if-nez p2, :cond_20

    .line 104
    const-string p2, "\' doesn\'t match the selected view."

    invoke-virtual {v0, p2}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 105
    invoke-virtual {v0}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-static {p2, p1, v0}, Landroidx/test/espresso/matcher/ViewMatchers;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 107
    return-void

    .line 96
    :cond_20
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p2}, Landroidx/test/espresso/NoMatchingViewException;->getViewMatcherDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 97
    const-string v2, "\' check could not be performed because view \'%s\' was not found.\n"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 101
    # getter for: Landroidx/test/espresso/assertion/ViewAssertions;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/assertion/ViewAssertions;->access$300()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 111
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MatchesViewAssertion{viewMatcher=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
