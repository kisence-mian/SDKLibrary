.class final Landroidx/test/espresso/matcher/RootMatchers$HasWindowLayoutParams;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "RootMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/RootMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HasWindowLayoutParams"
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

    .line 281
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

    .line 285
    const-string v0, "has window layout params"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 286
    return-void
.end method

.method public matchesSafely(Landroidx/test/espresso/Root;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getWindowLayoutParams()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/espresso/util/EspressoOptional;->isPresent()Z

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
            "root"
        }
    .end annotation

    .line 279
    check-cast p1, Landroidx/test/espresso/Root;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/RootMatchers$HasWindowLayoutParams;->matchesSafely(Landroidx/test/espresso/Root;)Z

    move-result p1

    return p1
.end method
