.class final Landroidx/test/espresso/matcher/ViewMatchers$HasContentDescriptionMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HasContentDescriptionMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 1181
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 2

    .line 1179
    invoke-direct {p0}, Landroidx/test/espresso/matcher/ViewMatchers$HasContentDescriptionMatcher;-><init>()V

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

    .line 1185
    const-string v0, "has content description"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1186
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
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

    .line 1178
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$HasContentDescriptionMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
