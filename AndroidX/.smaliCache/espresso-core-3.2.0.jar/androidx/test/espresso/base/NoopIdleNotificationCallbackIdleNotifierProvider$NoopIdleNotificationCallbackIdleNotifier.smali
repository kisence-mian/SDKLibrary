.class Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;
.super Ljava/lang/Object;
.source "NoopIdleNotificationCallbackIdleNotifierProvider.java"

# interfaces
.implements Landroidx/test/espresso/base/IdleNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoopIdleNotificationCallbackIdleNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/base/IdleNotifier<",
        "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$1;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCallback()V
    .registers 1

    .line 48
    return-void
.end method

.method public isIdleNow()Z
    .registers 2

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public registerNotificationCallback(Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->allResourcesIdle()V

    .line 45
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

    .line 34
    check-cast p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;->registerNotificationCallback(Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)V

    return-void
.end method
