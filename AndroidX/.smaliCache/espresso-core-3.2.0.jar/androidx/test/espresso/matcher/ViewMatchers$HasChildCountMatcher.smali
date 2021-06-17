.class final Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HasChildCountMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Landroid/view/View;",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final childCount:I
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
            "childCount"
        }
    .end annotation

    .line 1452
    const-class v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    .line 1453
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;->childCount:I

    .line 1454
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 1446
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;-><init>(I)V

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

    .line 1458
    const-string v0, "has child count: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;->childCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 1459
    return-void
.end method

.method public matchesSafely(Landroid/view/ViewGroup;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewGroup"
        }
    .end annotation

    .line 1463
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;->childCount:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "viewGroup"
        }
    .end annotation

    .line 1445
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$HasChildCountMatcher;->matchesSafely(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method
