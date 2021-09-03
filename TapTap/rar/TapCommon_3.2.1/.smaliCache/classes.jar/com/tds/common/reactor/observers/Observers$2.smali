.class final Lcom/tds/common/reactor/observers/Observers$2;
.super Ljava/lang/Object;
.source "Observers.java"

# interfaces
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/observers/Observers;->create(Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$onNext:Lcom/tds/common/reactor/functions/Action1;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/functions/Action1;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/tds/common/reactor/observers/Observers$2;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 1

    .line 86
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 90
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

    .line 95
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/observers/Observers$2;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
