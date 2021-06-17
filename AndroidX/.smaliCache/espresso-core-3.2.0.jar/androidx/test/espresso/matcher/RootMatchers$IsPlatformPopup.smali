.class final Landroidx/test/espresso/matcher/RootMatchers$IsPlatformPopup;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "RootMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/RootMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsPlatformPopup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroidx/test/espresso/Root;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

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

    .line 239
    const-string v0, "with decor view of type PopupWindow$PopupViewContainer"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 240
    return-void
.end method

.method public matchesSafely(Landroidx/test/espresso/Root;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 230
    nop

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 232
    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    goto :goto_c

    .line 231
    :cond_a
    const-string v0, "android.widget.PopupWindow$PopupViewContainer"

    .line 234
    :goto_c
    invoke-static {v0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withClassName(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/matcher/RootMatchers;->withDecorView(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

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
            "item"
        }
    .end annotation

    .line 224
    check-cast p1, Landroidx/test/espresso/Root;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/RootMatchers$IsPlatformPopup;->matchesSafely(Landroidx/test/espresso/Root;)Z

    move-result p1

    return p1
.end method
