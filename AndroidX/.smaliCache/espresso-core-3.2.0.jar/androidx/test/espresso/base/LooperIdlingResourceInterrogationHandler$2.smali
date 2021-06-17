.class Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;
.super Ljava/lang/Object;
.source "LooperIdlingResourceInterrogationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->forLooper(Landroid/os/Looper;)Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$ir"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 99
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    # setter for: Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->queue:Landroid/os/MessageQueue;
    invoke-static {v0, v1}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->access$002(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;Landroid/os/MessageQueue;)Landroid/os/MessageQueue;

    .line 100
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    const/4 v1, 0x1

    # setter for: Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->started:Z
    invoke-static {v0, v1}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->access$102(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;Z)Z

    .line 101
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;->val$ir:Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    invoke-static {v0}, Landroidx/test/espresso/base/Interrogator;->loopAndInterrogate(Landroidx/test/espresso/base/Interrogator$InterrogationHandler;)Ljava/lang/Object;

    .line 102
    return-void
.end method
