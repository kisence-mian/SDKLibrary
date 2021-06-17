.class Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;
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
    name = "DoesNotExistViewAssertion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/assertion/ViewAssertions$1;)V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroidx/test/espresso/assertion/ViewAssertions$DoesNotExistViewAssertion;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "noView"
        }
    .end annotation

    .line 122
    if-eqz p1, :cond_2d

    .line 123
    const-string p2, "View is present in the hierarchy: "

    .line 124
    invoke-static {p1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_17
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 123
    invoke-static {p1, p2, v0}, Landroidx/test/espresso/matcher/ViewMatchers;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 126
    :cond_2d
    return-void
.end method
