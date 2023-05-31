.class final Lcom/tds/common/reactor/internal/observers/Observers$4;
.super Ljava/lang/Object;
.source "Observers.java"

# interfaces
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/observers/Observers;->create(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Observer;
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
.field final synthetic val$onComplete:Lcom/tds/common/reactor/functions/Action0;

.field final synthetic val$onError:Lcom/tds/common/reactor/functions/Action1;

.field final synthetic val$onNext:Lcom/tds/common/reactor/functions/Action1;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/tds/common/reactor/internal/observers/Observers$4;->val$onComplete:Lcom/tds/common/reactor/functions/Action0;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/observers/Observers$4;->val$onError:Lcom/tds/common/reactor/functions/Action1;

    iput-object p3, p0, Lcom/tds/common/reactor/internal/observers/Observers$4;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Observers$4;->val$onComplete:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V

    .line 180
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 184
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Observers$4;->val$onError:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Observers$4;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 190
    return-void
.end method
