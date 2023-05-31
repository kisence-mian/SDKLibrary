.class Lrx/internal/operators/OperatorToMultimap$1;
.super Lrx/Subscriber;
.source "OperatorToMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToMultimap;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToMultimap;

.field final synthetic val$fLocalMap:Ljava/util/Map;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToMultimap;Lrx/Subscriber;Ljava/util/Map;Lrx/Subscriber;)V
    .registers 6

    .prologue
    .line 137
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    iput-object p3, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$fLocalMap:Ljava/util/Map;

    iput-object p4, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 138
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$fLocalMap:Ljava/util/Map;

    iput-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    .line 180
    .local v0, "map0":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    .line 181
    iget-object v1, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 183
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    .line 174
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    iget-object v4, v4, Lrx/internal/operators/OperatorToMultimap;->keySelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    iget-object v4, v4, Lrx/internal/operators/OperatorToMultimap;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_2d

    move-result-object v3

    .line 158
    .local v3, "value":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 159
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_29

    .line 161
    :try_start_1a
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    iget-object v4, v4, Lrx/internal/operators/OperatorToMultimap;->collectionFactory:Lrx/functions/Func1;

    invoke-interface {v4, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    check-cast v0, Ljava/util/Collection;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_24} :catch_34

    .line 166
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_29
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :goto_2c
    return-void

    .line 153
    :catch_2d
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {v1, v4}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_2c

    .line 162
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    :catch_34
    move-exception v1

    .line 163
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {v1, v4}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_2c
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToMultimap$1;->request(J)V

    .line 143
    return-void
.end method
