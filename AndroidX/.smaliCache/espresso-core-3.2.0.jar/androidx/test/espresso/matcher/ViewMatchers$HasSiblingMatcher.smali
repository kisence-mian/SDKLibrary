.class final Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HasSiblingMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final siblingMatcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
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
            "siblingMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 929
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 930
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;->siblingMatcher:Lorg/hamcrest/Matcher;

    .line 931
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 924
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 935
    const-string v0, "has sibling: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 936
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;->siblingMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 937
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 942
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 943
    return v1

    .line 945
    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    .line 946
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 947
    iget-object v2, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;->siblingMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 948
    const/4 p1, 0x1

    return p1

    .line 946
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 951
    :cond_24
    return v1
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

    .line 924
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$HasSiblingMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
