.class final Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;
.super Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ErrorEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b43427a9c2e580L


# instance fields
.field private done:Z


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 234
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 248
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    if-eqz v0, :cond_5

    .line 249
    return-void

    .line 251
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    .line 252
    invoke-super {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->onCompleted()V

    .line 253
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 258
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    if-eqz v0, :cond_8

    .line 259
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 260
    return-void

    .line 262
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    .line 263
    invoke-super {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->onError(Ljava/lang/Throwable;)V

    .line 264
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    if-eqz v0, :cond_5

    .line 240
    return-void

    .line 242
    :cond_5
    invoke-super {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->onNext(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method onOverflow()V
    .registers 3

    .line 269
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    new-instance v0, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;

    const-string v1, "create: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$ErrorEmitter;->onError(Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method
