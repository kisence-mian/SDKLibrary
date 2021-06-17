.class Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;
.super Ljava/lang/Object;
.source "UiControllerModule.java"

# interfaces
.implements Landroidx/test/espresso/base/InterruptableUiController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EspressoUiControllerAdapter"
.end annotation


# instance fields
.field private final platformUiController:Landroidx/test/platform/ui/UiController;


# direct methods
.method private constructor <init>(Landroidx/test/platform/ui/UiController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platformUiController"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/platform/ui/UiController;Landroidx/test/espresso/base/UiControllerModule$1;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;-><init>(Landroidx/test/platform/ui/UiController;)V

    return-void
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1}, Landroidx/test/platform/ui/UiController;->injectKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_6
    .catch Landroidx/test/platform/ui/InjectEventSecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 74
    :catch_7
    move-exception p1

    .line 75
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1}, Landroidx/test/platform/ui/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_6
    .catch Landroidx/test/platform/ui/InjectEventSecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 65
    :catch_7
    move-exception p1

    .line 66
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public injectMotionEventSequence(Ljava/lang/Iterable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/test/espresso/UiController$$CC;->injectMotionEventSequence$$dflt$$(Landroidx/test/espresso/UiController;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public injectString(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1}, Landroidx/test/platform/ui/UiController;->injectString(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroidx/test/platform/ui/InjectEventSecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 83
    :catch_7
    move-exception p1

    .line 84
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public interruptEspressoTasks()V
    .registers 3

    .line 100
    const-string v0, "UiController"

    const-string v1, "interruptEspressoTasks called, no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public loopMainThreadForAtLeast(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisDelay"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0, p1, p2}, Landroidx/test/platform/ui/UiController;->loopMainThreadForAtLeast(J)V

    .line 96
    return-void
.end method

.method public loopMainThreadUntilIdle()V
    .registers 2

    .line 90
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerModule$EspressoUiControllerAdapter;->platformUiController:Landroidx/test/platform/ui/UiController;

    invoke-interface {v0}, Landroidx/test/platform/ui/UiController;->loopMainThreadUntilIdle()V

    .line 91
    return-void
.end method
