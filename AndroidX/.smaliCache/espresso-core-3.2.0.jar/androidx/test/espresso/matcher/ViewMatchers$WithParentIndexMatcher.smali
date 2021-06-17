.class final Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithParentIndexMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I
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
            "index"
        }
    .end annotation

    .line 1715
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 1716
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;->index:I

    .line 1717
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 1710
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 1721
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;->index:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "with parent index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1722
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1726
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1727
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    check-cast v0, Landroid/view/ViewGroup;

    .line 1728
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget v2, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;->index:I

    if-le v1, v2, :cond_1a

    .line 1729
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 1727
    :goto_1b
    return p1
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

    .line 1709
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithParentIndexMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
