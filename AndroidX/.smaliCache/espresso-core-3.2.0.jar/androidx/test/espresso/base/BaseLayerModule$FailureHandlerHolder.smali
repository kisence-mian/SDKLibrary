.class public Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;
.super Ljava/lang/Object;
.source "BaseLayerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/BaseLayerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailureHandlerHolder"
.end annotation


# instance fields
.field private final holder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/test/espresso/FailureHandler;)V
    .registers 3
    .param p1    # Landroidx/test/espresso/FailureHandler;
        .annotation runtime Landroidx/test/espresso/base/Default;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultHandler"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;->holder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 154
    return-void
.end method


# virtual methods
.method public get()Landroidx/test/espresso/FailureHandler;
    .registers 2

    .line 161
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;->holder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/FailureHandler;

    return-object v0
.end method

.method public update(Landroidx/test/espresso/FailureHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;->holder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    return-void
.end method
