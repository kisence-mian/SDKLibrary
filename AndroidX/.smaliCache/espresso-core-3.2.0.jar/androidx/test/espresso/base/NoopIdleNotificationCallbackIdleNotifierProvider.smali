.class final Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider;
.super Ljava/lang/Object;
.source "NoopIdleNotificationCallbackIdleNotifierProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroidx/test/espresso/base/IdleNotifier<",
        "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;
    .registers 3

    .line 31
    new-instance v0, Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;-><init>(Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider;->get()Landroidx/test/espresso/base/NoopIdleNotificationCallbackIdleNotifierProvider$NoopIdleNotificationCallbackIdleNotifier;

    move-result-object v0

    return-object v0
.end method
