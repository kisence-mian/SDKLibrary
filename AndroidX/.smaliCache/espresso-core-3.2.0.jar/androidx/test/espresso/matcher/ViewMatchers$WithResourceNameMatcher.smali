.class final Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithResourceNameMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final stringMatcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
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
            "stringMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 689
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    .line 690
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 682
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;-><init>(Lorg/hamcrest/Matcher;)V

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

    .line 694
    const-string v0, "with res-name that "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 695
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 696
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

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    # invokes: Landroidx/test/espresso/matcher/ViewMatchers;->isViewIdGenerated(I)Z
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->access$4000(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2e

    .line 704
    :cond_19
    :try_start_19
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->stringMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_2b} :catch_2c

    return p1

    .line 705
    :catch_2c
    move-exception p1

    .line 706
    return v1

    .line 701
    :cond_2e
    :goto_2e
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

    .line 682
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithResourceNameMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
