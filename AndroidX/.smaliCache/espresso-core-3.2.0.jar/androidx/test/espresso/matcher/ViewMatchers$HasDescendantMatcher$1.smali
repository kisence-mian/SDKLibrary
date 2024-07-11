.class Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$1;
.super Ljava/lang/Object;
.source "ViewMatchers.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;->matchesSafely(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Predicate<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .line 1213
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$1;->this$0:Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;

    iput-object p2, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$1;->val$view:Landroid/view/View;

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$1;->this$0:Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;

    # getter for: Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;->descendantMatcher:Lorg/hamcrest/Matcher;
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;->access$4100(Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .line 1213
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$HasDescendantMatcher$1;->apply(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
