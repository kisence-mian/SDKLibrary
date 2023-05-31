.class final Lcom/tds/common/reactor/internal/observers/Observers$3;
.super Ljava/lang/Object;
.source "Observers.java"

# interfaces
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/observers/Observers;->create(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Observer;
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
.field final synthetic val$onError:Lcom/tds/common/reactor/functions/Action1;

.field final synthetic val$onNext:Lcom/tds/common/reactor/functions/Action1;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/tds/common/reactor/internal/observers/Observers$3;->val$onError:Lcom/tds/common/reactor/functions/Action1;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/observers/Observers$3;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 1

    .line 130
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 134
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Observers$3;->val$onError:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 139
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/observers/Observers$3;->val$onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 140
    return-void
.end method
