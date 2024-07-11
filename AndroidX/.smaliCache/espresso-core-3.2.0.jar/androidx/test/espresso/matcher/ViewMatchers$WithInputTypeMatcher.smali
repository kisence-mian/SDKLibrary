.class final Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithInputTypeMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Landroid/view/View;",
        "Landroid/widget/EditText;",
        ">;"
    }
.end annotation


# instance fields
.field private inputType:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    .line 1693
    const-class v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    .line 1694
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;->inputType:I

    .line 1695
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 1687
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;-><init>(I)V

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

    .line 1699
    const-string v0, "is view input type equal to: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1700
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;->inputType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1701
    return-void
.end method

.method protected matchesSafely(Landroid/widget/EditText;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1705
    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;->inputType:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 1686
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithInputTypeMatcher;->matchesSafely(Landroid/widget/EditText;)Z

    move-result p1

    return p1
.end method
