.class final Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithSpinnerTextIdMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Landroid/view/View;",
        "Landroid/widget/Spinner;",
        ">;"
    }
.end annotation


# instance fields
.field private expectedText:Ljava/lang/String;

.field private resourceId:I
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
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1583
    const-class v0, Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    .line 1578
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceName:Ljava/lang/String;

    .line 1579
    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->expectedText:Ljava/lang/String;

    .line 1584
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceId:I

    .line 1585
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 1574
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;-><init>(I)V

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

    .line 1589
    const-string v0, "with string from resource id: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1590
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 1591
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceName:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 1592
    const-string v0, "["

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1593
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1594
    const-string v0, "]"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1596
    :cond_21
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 1597
    const-string v0, " value: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1598
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->expectedText:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1600
    :cond_2f
    return-void
.end method

.method public matchesSafely(Landroid/widget/Spinner;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spinner"
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->expectedText:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 1606
    :try_start_4
    invoke-virtual {p1}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->expectedText:Ljava/lang/String;

    .line 1607
    invoke-virtual {p1}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->resourceName:Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 1612
    goto :goto_1e

    .line 1608
    :catch_1d
    move-exception v0

    .line 1614
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 1615
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1617
    :cond_2f
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
            "spinner"
        }
    .end annotation

    .line 1573
    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithSpinnerTextIdMatcher;->matchesSafely(Landroid/widget/Spinner;)Z

    move-result p1

    return p1
.end method
