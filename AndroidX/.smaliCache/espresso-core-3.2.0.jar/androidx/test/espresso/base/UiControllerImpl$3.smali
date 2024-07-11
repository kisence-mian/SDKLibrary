.class Landroidx/test/espresso/base/UiControllerImpl$3;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/UiControllerImpl;->injectMotionEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/UiControllerImpl;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/UiControllerImpl;Landroid/view/MotionEvent;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$event"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$3;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    iput-object p2, p0, Landroidx/test/espresso/base/UiControllerImpl$3;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$3;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->eventInjector:Landroidx/test/espresso/base/EventInjector;
    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$100(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/EventInjector;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$3;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/base/EventInjector;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
