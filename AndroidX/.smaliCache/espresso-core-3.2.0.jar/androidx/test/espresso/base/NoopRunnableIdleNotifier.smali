.class Landroidx/test/espresso/base/NoopRunnableIdleNotifier;
.super Ljava/lang/Object;
.source "NoopRunnableIdleNotifier.java"

# interfaces
.implements Landroidx/test/espresso/base/IdleNotifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/base/IdleNotifier<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCallback()V
    .registers 1

    .line 31
    return-void
.end method

.method public isIdleNow()Z
    .registers 2

    .line 27
    const/4 v0, 0x1

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

    .line 23
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/NoopRunnableIdleNotifier;->registerNotificationCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerNotificationCallback(Ljava/lang/Runnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 36
    return-void
.end method
