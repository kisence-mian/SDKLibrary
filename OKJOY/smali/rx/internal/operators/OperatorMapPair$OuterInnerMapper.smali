.class final Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMapPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OuterInnerMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TU;TR;>;"
    }
.end annotation


# instance fields
.field final outer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;, "Lrx/internal/operators/OperatorMapPair$OuterInnerMapper<TT;TU;TR;>;"
    .local p1, "outer":Ljava/lang/Object;, "TT;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;->outer:Ljava/lang/Object;

    .line 137
    iput-object p2, p0, Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;->resultSelector:Lrx/functions/Func2;

    .line 138
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TR;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;, "Lrx/internal/operators/OperatorMapPair$OuterInnerMapper<TT;TU;TR;>;"
    .local p1, "inner":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;->resultSelector:Lrx/functions/Func2;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapPair$OuterInnerMapper;->outer:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
