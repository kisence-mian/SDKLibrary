.class public final Lrx/internal/operators/OperatorDistinctUntilChanged;
.super Ljava/lang/Object;
.source "OperatorDistinctUntilChanged.java"

# interfaces
.implements Lrx/Observable$Operator;
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;",
        "Lrx/functions/Func2",
        "<TU;TU;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final comparator:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    .line 53
    iput-object p0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->comparator:Lrx/functions/Func2;

    .line 55
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "comparator":Lrx/functions/Func2;, "Lrx/functions/Func2<-TU;-TU;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->comparator:Lrx/functions/Func2;

    .line 61
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorDistinctUntilChanged;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorDistinctUntilChanged",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;->INSTANCE:Lrx/internal/operators/OperatorDistinctUntilChanged;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TU;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "t1":Ljava/lang/Object;, "TU;"
    .local p2, "t2":Ljava/lang/Object;, "TU;"
    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_a
    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged$1;-><init>(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
