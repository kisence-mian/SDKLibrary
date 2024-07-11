.class Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion$1;
.super Ljava/lang/Object;
.source "LayoutAssertions.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;->check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
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
.field final synthetic this$0:Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;


# direct methods
.method constructor <init>(Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion$1;->this$0:Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;

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

    .line 120
    iget-object v0, p0, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion$1;->this$0:Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;

    # getter for: Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;->selector:Lorg/hamcrest/Matcher;
    invoke-static {v0}, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;->access$100(Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

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

    .line 117
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion$1;->apply(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
