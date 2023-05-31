.class Lrx/Single$21$1;
.super Lrx/Subscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$21;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Single$21;

.field final synthetic val$serial:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Single$21;Lrx/Subscriber;ZLrx/Subscriber;)V
    .registers 5
    .param p3, "x1"    # Z

    .prologue
    .line 2054
    .local p0, "this":Lrx/Single$21$1;, "Lrx/Single$21.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/Single$21$1;->this$1:Lrx/Single$21;

    iput-object p4, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 2070
    .local p0, "this":Lrx/Single$21$1;, "Lrx/Single$21.1;"
    :try_start_0
    iget-object v0, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 2072
    iget-object v0, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 2074
    return-void

    .line 2072
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2062
    .local p0, "this":Lrx/Single$21$1;, "Lrx/Single$21.1;"
    :try_start_0
    iget-object v0, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 2064
    iget-object v0, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 2066
    return-void

    .line 2064
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2057
    .local p0, "this":Lrx/Single$21$1;, "Lrx/Single$21.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Single$21$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 2058
    return-void
.end method
