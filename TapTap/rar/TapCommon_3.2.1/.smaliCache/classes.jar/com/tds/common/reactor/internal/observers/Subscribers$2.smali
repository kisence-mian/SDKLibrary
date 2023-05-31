.class final Lcom/tds/common/reactor/internal/observers/Subscribers$2;
.super Lcom/tds/common/reactor/Subscriber;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/observers/Subscribers;->create(Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscriber;
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
.field final synthetic val$onNext:Lcom/tds/common/reactor/functions/Action1;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/functions/Action1;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$2;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 1

    .line 97
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 101
    new-instance v0, Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Subscribers$2;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 107
    return-void
.end method
