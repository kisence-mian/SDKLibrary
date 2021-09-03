.class public final Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;
.super Ljava/lang/Object;
.source "OnSubscribeThrow.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 26
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;->exception:Ljava/lang/Throwable;

    .line 28
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow<TT;>;"
    .local p1, "observer":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 22
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeThrow;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
