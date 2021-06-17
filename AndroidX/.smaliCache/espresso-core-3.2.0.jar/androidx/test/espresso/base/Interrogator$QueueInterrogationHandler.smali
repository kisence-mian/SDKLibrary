.class interface abstract Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;
.super Ljava/lang/Object;
.source "Interrogator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/Interrogator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "QueueInterrogationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract barrierUp()Z
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract queueEmpty()Z
.end method

.method public abstract taskDueLong()Z
.end method

.method public abstract taskDueSoon()Z
.end method
