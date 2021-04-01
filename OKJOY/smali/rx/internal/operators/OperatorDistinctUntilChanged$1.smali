.class Lrx/internal/operators/OperatorDistinctUntilChanged$1;
.super Lrx/Subscriber;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field hasPrevious:Z

.field previousKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iput-object p3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged$1;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iget-object v4, v4, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_26

    move-result-object v3

    .line 82
    .local v3, "key":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 83
    .local v1, "currentKey":Ljava/lang/Object;, "TU;"
    iput-object v3, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->previousKey:Ljava/lang/Object;

    .line 85
    iget-boolean v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    if-eqz v4, :cond_3a

    .line 89
    :try_start_10
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->this$0:Lrx/internal/operators/OperatorDistinctUntilChanged;

    iget-object v4, v4, Lrx/internal/operators/OperatorDistinctUntilChanged;->comparator:Lrx/functions/Func2;

    invoke-interface {v4, v1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_2d

    move-result v0

    .line 95
    .local v0, "comparison":Z
    if-nez v0, :cond_34

    .line 96
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 104
    .end local v0    # "comparison":Z
    .end local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .end local v3    # "key":Ljava/lang/Object;, "TU;"
    :goto_25
    return-void

    .line 78
    :catch_26
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-static {v2, v4, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_25

    .line 90
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .restart local v3    # "key":Ljava/lang/Object;, "TU;"
    :catch_2d
    move-exception v2

    .line 91
    .restart local v2    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-static {v2, v4, v3}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_25

    .line 98
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "comparison":Z
    :cond_34
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->request(J)V

    goto :goto_25

    .line 101
    .end local v0    # "comparison":Z
    :cond_3a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->hasPrevious:Z

    .line 102
    iget-object v4, p0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_25
.end method
