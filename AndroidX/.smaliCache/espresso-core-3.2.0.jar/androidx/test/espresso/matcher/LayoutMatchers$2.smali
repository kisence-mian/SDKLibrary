.class Landroidx/test/espresso/matcher/LayoutMatchers$2;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "LayoutMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/matcher/LayoutMatchers;->hasMultilineText()Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lorg/hamcrest/TypeSafeMatcher;-><init>(Ljava/lang/Class;)V

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

    .line 60
    const-string v0, "has more than one line of text"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 61
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tv"
        }
    .end annotation

    .line 65
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tv"
        }
    .end annotation

    .line 57
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/LayoutMatchers$2;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
