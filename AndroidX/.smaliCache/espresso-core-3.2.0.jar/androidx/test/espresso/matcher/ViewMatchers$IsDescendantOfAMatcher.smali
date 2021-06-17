.class final Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsDescendantOfAMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final ancestorMatcher:Lorg/hamcrest/Matcher;
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
            0x0
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
            ">;)V"
        }
    .end annotation

    .line 1249
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 1250
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->ancestorMatcher:Lorg/hamcrest/Matcher;

    .line 1251
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 1244
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method private checkAncestors(Landroid/view/ViewParent;Lorg/hamcrest/Matcher;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewParent",
            "ancestorMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewParent;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 1265
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_6

    .line 1266
    const/4 p1, 0x0

    return p1

    .line 1268
    :cond_6
    invoke-interface {p2, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1269
    const/4 p1, 0x1

    return p1

    .line 1271
    :cond_e
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->checkAncestors(Landroid/view/ViewParent;Lorg/hamcrest/Matcher;)Z

    move-result p1

    return p1
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

    .line 1255
    const-string v0, "is descendant of a: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1256
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->ancestorMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 1257
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1261
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->ancestorMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->checkAncestors(Landroid/view/ViewParent;Lorg/hamcrest/Matcher;)Z

    move-result p1

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

    .line 1243
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsDescendantOfAMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
