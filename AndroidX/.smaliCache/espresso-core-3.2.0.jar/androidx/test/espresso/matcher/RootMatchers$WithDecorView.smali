.class final Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "RootMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/RootMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithDecorView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroidx/test/espresso/Root;",
        ">;"
    }
.end annotation


# instance fields
.field private final decorViewMatcher:Lorg/hamcrest/Matcher;
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
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 2
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "decorViewMatcher"
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

    .line 248
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 249
    iput-object p1, p0, Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;->decorViewMatcher:Lorg/hamcrest/Matcher;

    .line 250
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

    .line 254
    const-string v0, "with decor view "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 255
    iget-object v0, p0, Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;->decorViewMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 256
    return-void
.end method

.method public matchesSafely(Landroidx/test/espresso/Root;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;->decorViewMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getDecorView()Landroid/view/View;

    move-result-object p1

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
            "root"
        }
    .end annotation

    .line 243
    check-cast p1, Landroidx/test/espresso/Root;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/RootMatchers$WithDecorView;->matchesSafely(Landroidx/test/espresso/Root;)Z

    move-result p1

    return p1
.end method
