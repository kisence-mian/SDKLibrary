.class public final Landroidx/test/espresso/assertion/ViewAssertions;
.super Ljava/lang/Object;
.source "ViewAssertions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;,
        Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;,
        Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Landroidx/test/espresso/assertion/ViewAssertions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/assertion/ViewAssertions;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 44
    sget-object v0, Landroidx/test/espresso/assertion/ViewAssertions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static doesNotExist()Landroidx/test/espresso/ViewAssertion;
    .registers 2

    .line 55
    new-instance v0, Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;-><init>(Landroidx/test/espresso/assertion/ViewAssertions$1;)V

    return-object v0
.end method

.method public static matches(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 3
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
            ">;)",
            "Landroidx/test/espresso/ViewAssertion;"
        }
    .end annotation

    .line 63
    new-instance v0, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hamcrest/Matcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/assertion/ViewAssertions$MatchesViewAssertion;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/ViewAssertions$1;)V

    return-object v0
.end method

.method public static selectedDescendantsMatch(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "selector",
            "matcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/ViewAssertion;"
        }
    .end annotation

    .line 76
    new-instance v0, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/espresso/assertion/ViewAssertions$SelectedDescendantsMatchViewAssertion;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/ViewAssertions$1;)V

    return-object v0
.end method
