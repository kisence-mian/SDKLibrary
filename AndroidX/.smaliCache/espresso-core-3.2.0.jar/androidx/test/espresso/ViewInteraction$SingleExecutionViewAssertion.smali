.class final Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;
.super Ljava/lang/Object;
.source "ViewInteraction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAssertion;
.implements Landroidx/test/espresso/remote/Bindable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/ViewInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleExecutionViewAssertion"
.end annotation


# instance fields
.field private assertionExecutionStatus:Landroidx/test/espresso/remote/IInteractionExecutionStatus;

.field final viewAssertion:Landroidx/test/espresso/ViewAssertion;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/ViewAssertion;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAssertion"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion$1;-><init>(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;)V

    iput-object v0, p0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;->assertionExecutionStatus:Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    .line 418
    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;->viewAssertion:Landroidx/test/espresso/ViewAssertion;

    .line 419
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/ViewAssertion;Landroidx/test/espresso/ViewInteraction$1;)V
    .registers 3

    .line 401
    invoke-direct {p0, p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;-><init>(Landroidx/test/espresso/ViewAssertion;)V

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "noViewFoundException"
        }
    .end annotation

    .line 424
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;->assertionExecutionStatus:Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    invoke-interface {v0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 425
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;->viewAssertion:Landroidx/test/espresso/ViewAssertion;

    invoke-interface {v0, p1, p2}, Landroidx/test/espresso/ViewAssertion;->check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V

    goto :goto_3b

    .line 428
    :cond_e
    # getter for: Landroidx/test/espresso/ViewInteraction;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/ViewInteraction;->access$500()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;->viewAssertion:Landroidx/test/espresso/ViewAssertion;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Attempted to execute a Single Execution Assertion more then once: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 427
    invoke-static {p1, p2, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3b} :catch_3d

    .line 433
    :goto_3b
    nop

    .line 434
    return-void

    .line 431
    :catch_3d
    move-exception p1

    .line 432
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Unable to query interaction execution status"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getIBinder()Landroid/os/IBinder;
    .registers 2

    .line 443
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;->assertionExecutionStatus:Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    invoke-interface {v0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 438
    const-string v0, "executionStatus"

    return-object v0
.end method

.method public setIBinder(Landroid/os/IBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 448
    invoke-static {p1}, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;->assertionExecutionStatus:Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    .line 449
    return-void
.end method
