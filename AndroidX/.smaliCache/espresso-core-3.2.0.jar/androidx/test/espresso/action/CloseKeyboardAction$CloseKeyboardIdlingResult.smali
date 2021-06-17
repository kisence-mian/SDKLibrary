.class Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;
.super Landroid/os/ResultReceiver;
.source "CloseKeyboardAction.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/CloseKeyboardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseKeyboardIdlingResult"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private idle:Z

.field private receivedResult:Z

.field private resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

.field private result:I

.field private timedOut:Z


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->receivedResult:Z

    .line 150
    const/4 v1, -0x1

    iput v1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->result:I

    .line 152
    iput-boolean v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->timedOut:Z

    .line 154
    iput-boolean v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->idle:Z

    .line 159
    iput-object p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->handler:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Landroidx/test/espresso/action/CloseKeyboardAction$1;)V
    .registers 3

    .line 143
    invoke-direct {p0, p1}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;J)V
    .registers 3

    .line 143
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->scheduleTimeout(J)V

    return-void
.end method

.method static synthetic access$200(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Z
    .registers 1

    .line 143
    iget-boolean p0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->timedOut:Z

    return p0
.end method

.method static synthetic access$202(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;Z)Z
    .registers 2

    .line 143
    iput-boolean p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->timedOut:Z

    return p1
.end method

.method static synthetic access$300(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)I
    .registers 1

    .line 143
    iget p0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->result:I

    return p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Z
    .registers 1

    .line 143
    iget-boolean p0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->receivedResult:Z

    return p0
.end method

.method static synthetic access$500(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Landroidx/test/espresso/IdlingResource$ResourceCallback;
    .registers 1

    .line 143
    iget-object p0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    return-object p0
.end method

.method static synthetic access$602(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;Z)Z
    .registers 2

    .line 143
    iput-boolean p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->idle:Z

    return p1
.end method

.method private notifyEspresso(J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->receivedResult:Z

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 180
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$2;

    invoke-direct {v1, p0}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$2;-><init>(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method

.method private scheduleTimeout(J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;

    invoke-direct {v1, p0}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;-><init>(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 207
    const-string v0, "CloseKeyboardIdlingResource"

    return-object v0
.end method

.method public isIdleNow()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->idle:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->timedOut:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultData"
        }
    .end annotation

    .line 195
    iput p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->result:I

    .line 196
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->receivedResult:Z

    .line 202
    const-wide/16 p1, 0x12c

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->notifyEspresso(J)V

    .line 203
    return-void
.end method

.method public registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 223
    return-void
.end method
