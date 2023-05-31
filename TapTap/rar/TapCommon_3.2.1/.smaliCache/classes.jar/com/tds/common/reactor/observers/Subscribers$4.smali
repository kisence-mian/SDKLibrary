.class final Lcom/tds/common/reactor/observers/Subscribers$4;
.super Lcom/tds/common/reactor/Subscriber;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/observers/Subscribers;->create(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscriber;
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
.field final synthetic val$onComplete:Lcom/tds/common/reactor/functions/Action0;

.field final synthetic val$onError:Lcom/tds/common/reactor/functions/Action1;

.field final synthetic val$onNext:Lcom/tds/common/reactor/functions/Action1;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)V
    .registers 4

    .line 186
    iput-object p1, p0, Lcom/tds/common/reactor/observers/Subscribers$4;->val$onComplete:Lcom/tds/common/reactor/functions/Action0;

    iput-object p2, p0, Lcom/tds/common/reactor/observers/Subscribers$4;->val$onError:Lcom/tds/common/reactor/functions/Action1;

    iput-object p3, p0, Lcom/tds/common/reactor/observers/Subscribers$4;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/tds/common/reactor/observers/Subscribers$4;->val$onComplete:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V

    .line 191
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 195
    iget-object v0, p0, Lcom/tds/common/reactor/observers/Subscribers$4;->val$onError:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 200
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/observers/Subscribers$4;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
