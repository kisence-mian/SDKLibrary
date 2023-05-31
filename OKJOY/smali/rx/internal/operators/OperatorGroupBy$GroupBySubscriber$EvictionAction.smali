.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EvictionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final evictedKeys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction<TK;>;"
    .local p1, "evictedKeys":Ljava/util/Queue;, "Ljava/util/Queue<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;->evictedKeys:Ljava/util/Queue;

    .line 169
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
