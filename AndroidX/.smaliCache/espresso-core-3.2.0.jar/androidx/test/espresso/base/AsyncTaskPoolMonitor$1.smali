.class Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;
.super Ljava/lang/Object;
.source "AsyncTaskPoolMonitor.java"

# interfaces
.implements Landroidx/test/espresso/base/IdleNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->asIdleNotifier()Landroidx/test/espresso/base/IdleNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/base/IdleNotifier<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/AsyncTaskPoolMonitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCallback()V
    .registers 2

    .line 55
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-virtual {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->cancelIdleMonitor()V

    .line 56
    return-void
.end method

.method public isIdleNow()Z
    .registers 2

    .line 50
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-virtual {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->isIdleNow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic registerNotificationCallback(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;->registerNotificationCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerNotificationCallback(Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor$1;->this$0:Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->notifyWhenIdle(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method
