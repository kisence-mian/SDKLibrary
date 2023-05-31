.class final Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7404e4d77326a273L


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 249
    return-void
.end method


# virtual methods
.method onOverflow()V
    .registers 1

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$DropAsyncEmitter<TT;>;"
    return-void
.end method
