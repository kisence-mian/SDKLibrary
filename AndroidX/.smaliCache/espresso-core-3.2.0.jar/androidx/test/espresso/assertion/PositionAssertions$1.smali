.class Landroidx/test/espresso/assertion/PositionAssertions$1;
.super Ljava/lang/Object;
.source "PositionAssertions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAssertion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/assertion/PositionAssertions;->relativePositionOf(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Landroidx/test/espresso/ViewAssertion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$position:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field final synthetic val$viewMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Landroidx/test/espresso/assertion/PositionAssertions$Position;Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$position",
            "val$viewMatcher"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Landroidx/test/espresso/assertion/PositionAssertions$1;->val$position:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    iput-object p2, p0, Landroidx/test/espresso/assertion/PositionAssertions$1;->val$viewMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "foundView",
            "noViewException"
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/hamcrest/StringDescription;

    invoke-direct {v0}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 271
    const/4 v1, 0x1

    if-nez p2, :cond_5b

    .line 281
    nop

    .line 282
    const-string p2, "View:"

    invoke-virtual {v0, p2}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 283
    invoke-static {p1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 284
    const-string v2, " is not "

    invoke-interface {p2, v2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    iget-object v2, p0, Landroidx/test/espresso/assertion/PositionAssertions$1;->val$position:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 285
    invoke-virtual {v2}, Landroidx/test/espresso/assertion/PositionAssertions$Position;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    .line 286
    const-string v2, " view "

    invoke-interface {p2, v2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    iget-object v2, p0, Landroidx/test/espresso/assertion/PositionAssertions$1;->val$viewMatcher:Lorg/hamcrest/Matcher;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 288
    nop

    .line 289
    invoke-virtual {v0}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Landroidx/test/espresso/assertion/PositionAssertions$1;->val$viewMatcher:Lorg/hamcrest/Matcher;

    .line 291
    # invokes: Landroidx/test/espresso/assertion/PositionAssertions;->getTopViewGroup(Landroid/view/View;)Landroid/view/ViewGroup;
    invoke-static {p1}, Landroidx/test/espresso/assertion/PositionAssertions;->access$000(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/test/espresso/assertion/PositionAssertions;->findView(Lorg/hamcrest/Matcher;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroidx/test/espresso/assertion/PositionAssertions$1;->val$position:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 290
    invoke-static {p1, v0, v2}, Landroidx/test/espresso/assertion/PositionAssertions;->isRelativePosition(Landroid/view/View;Landroid/view/View;Landroidx/test/espresso/assertion/PositionAssertions$Position;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 292
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 288
    invoke-static {p2, p1, v0}, Landroidx/test/espresso/matcher/ViewMatchers;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 294
    return-void

    .line 272
    :cond_5b
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 276
    invoke-virtual {p2}, Landroidx/test/espresso/NoMatchingViewException;->getViewMatcherDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 273
    const-string v2, "\' check could not be performed because view \'%s\' was not found.\n"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {v0, p1}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 277
    invoke-virtual {v0}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PositionAssertions"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    throw p2
.end method
