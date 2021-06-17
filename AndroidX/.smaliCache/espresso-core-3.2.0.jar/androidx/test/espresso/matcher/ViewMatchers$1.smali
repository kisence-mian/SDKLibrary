.class Landroidx/test/espresso/matcher/ViewMatchers$1;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/matcher/ViewMatchers;->hasTextColor(I)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Landroid/view/View;",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic val$colorResId:I


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010
        }
        names = {
            "expectedType",
            "val$colorResId"
        }
    .end annotation

    .line 1339
    iput p2, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->val$colorResId:I

    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 1359
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->val$colorResId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1360
    iget-object v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->context:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 1361
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->val$colorResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1363
    :cond_14
    const-string v1, "has color with ID "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1364
    return-void
.end method

.method protected matchesSafely(Landroid/widget/TextView;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 1344
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->context:Landroid/content/Context;

    .line 1345
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 1348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1d

    .line 1349
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->val$colorResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_25

    .line 1351
    :cond_1d
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->context:Landroid/content/Context;

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$1;->val$colorResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1354
    :goto_25
    if-ne p1, v0, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "textView"
        }
    .end annotation

    .line 1339
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$1;->matchesSafely(Landroid/widget/TextView;)Z

    move-result p1

    return p1
.end method
