.class public Landroidx/test/espresso/base/UiControllerModule;
.super Ljava/lang/Object;
.source "UiControllerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideUiController(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/UiController;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiControllerImpl"
        }
    .end annotation

    .line 41
    const-class v0, Landroidx/test/platform/ui/UiController;

    .line 42
    invoke-static {v0}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadService(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 44
    return-object p1

    .line 45
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    .line 46
    new-instance p1, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/platform/ui/UiController;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;-><init>(Landroidx/test/platform/ui/UiController;Landroidx/test/espresso/base/UiControllerModule$1;)V

    return-object p1

    .line 48
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Found more than one androidx.test.internal.platform.UiController"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
