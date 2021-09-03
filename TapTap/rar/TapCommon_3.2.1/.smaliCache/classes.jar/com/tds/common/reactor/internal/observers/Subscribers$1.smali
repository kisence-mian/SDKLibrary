.class final Lcom/tds/common/reactor/internal/observers/Subscribers$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/observers/Subscribers;->from(Lcom/tds/common/reactor/Observer;)Lcom/tds/common/reactor/Subscriber;
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
.field final synthetic val$o:Lcom/tds/common/reactor/Observer;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Observer;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$1;->val$o:Lcom/tds/common/reactor/Observer;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$1;->val$o:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0}, Lcom/tds/common/reactor/Observer;->onCompleted()V

    .line 59
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 63
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$1;->val$o:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 68
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$1;->val$o:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onNext(Ljava/lang/Object;)V

    .line 69
    return-void
.end method
