.class final Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithContentDescriptionFromIdMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private expectedText:Ljava/lang/String;

.field private final resourceId:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field

.field private resourceName:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 964
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceName:Ljava/lang/String;

    .line 961
    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->expectedText:Ljava/lang/String;

    .line 965
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceId:I

    .line 966
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 955
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;-><init>(I)V

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

    .line 970
    const-string v0, "with content description from resource id: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 971
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 972
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceName:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 973
    const-string v0, "["

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 974
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 975
    const-string v0, "]"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 977
    :cond_21
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 978
    const-string v0, " value: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 979
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->expectedText:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 981
    :cond_2f
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 985
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->expectedText:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 987
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->expectedText:Ljava/lang/String;

    .line 988
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->resourceName:Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 991
    goto :goto_1e

    .line 989
    :catch_1d
    move-exception v0

    .line 993
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 994
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->expectedText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 996
    :cond_37
    const/4 p1, 0x0

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

    .line 955
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithContentDescriptionFromIdMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
