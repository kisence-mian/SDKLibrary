.class final Landroidx/test/espresso/matcher/RootMatchers$IsSystemAlertWindow;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "RootMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/RootMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsSystemAlertWindow"
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

    .line 198
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

    .line 202
    const-string v0, "is system alert window"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 203
    return-void
.end method

.method public matchesSafely(Landroidx/test/espresso/Root;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getWindowLayoutParams()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 209
    const/16 v1, 0x7d0

    if-ge v1, v0, :cond_28

    const/16 v1, 0xbb7

    if-le v1, v0, :cond_28

    .line 211
    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    .line 213
    if-ne v0, p1, :cond_28

    .line 217
    const/4 p1, 0x1

    return p1

    .line 220
    :cond_28
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
            "root"
        }
    .end annotation

    .line 196
    check-cast p1, Landroidx/test/espresso/Root;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/RootMatchers$IsSystemAlertWindow;->matchesSafely(Landroidx/test/espresso/Root;)Z

    move-result p1

    return p1
.end method
