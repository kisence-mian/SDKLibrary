.class Landroidx/test/espresso/base/IdlingResourceRegistry$6;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Landroidx/test/espresso/base/IdleNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;->asIdleNotifier()Landroidx/test/espresso/base/IdleNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/base/IdleNotifier<",
        "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$6;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCallback()V
    .registers 2

    .line 307
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$6;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-virtual {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->cancelIdleMonitor()V

    .line 308
    return-void
.end method

.method public isIdleNow()Z
    .registers 2

    .line 302
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$6;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-virtual {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->allResourcesAreIdle()Z

    move-result v0

    return v0
.end method

.method public registerNotificationCallback(Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$6;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->notifyWhenAllResourcesAreIdle(Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)V

    .line 313
    return-void
.end method

.method public bridge synthetic registerNotificationCallback(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cb"
        }
    .end annotation

    .line 299
    check-cast p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$6;->registerNotificationCallback(Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)V

    return-void
.end method
