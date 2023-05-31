.class final Lcom/tds/common/reactor/internal/observers/Subscribers$5;
.super Lcom/tds/common/reactor/Subscriber;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/observers/Subscribers;->wrap(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$subscriber:Lcom/tds/common/reactor/Subscriber;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V
    .registers 3

    .line 223
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<*>;"
    iput-object p2, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$5;->val$subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-direct {p0, p1}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$5;->val$subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 228
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 232
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$5;->val$subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 233
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 237
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$5;->val$subscriber:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 238
    return-void
.end method
