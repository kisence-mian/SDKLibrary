.class interface abstract Landroidx/test/espresso/base/IdleNotifier;
.super Ljava/lang/Object;
.source "IdleNotifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CB:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancelCallback()V
.end method

.method public abstract isIdleNow()Z
.end method

.method public abstract registerNotificationCallback(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCB;)V"
        }
    .end annotation
.end method
