.class final Lrx/internal/util/InternalObservableUtils$CollectorCaller;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollectorCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final collector:Lrx/functions/Action2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action2",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action2",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$CollectorCaller;, "Lrx/internal/util/InternalObservableUtils$CollectorCaller<TT;TR;>;"
    .local p1, "collector":Lrx/functions/Action2;, "Lrx/functions/Action2<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$CollectorCaller;->collector:Lrx/functions/Action2;

    .line 374
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$CollectorCaller;, "Lrx/internal/util/InternalObservableUtils$CollectorCaller<TT;TR;>;"
    .local p1, "state":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$CollectorCaller;->collector:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    return-object p1
.end method
