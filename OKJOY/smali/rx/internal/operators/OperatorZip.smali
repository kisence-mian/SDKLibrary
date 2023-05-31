.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip;,
        Lrx/internal/operators/OperatorZip$ZipProducer;,
        Lrx/internal/operators/OperatorZip$ZipSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;[",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func2;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 59
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func3;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 64
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func4;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func4;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 69
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func5;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func5;

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 74
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func6;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func6;

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 79
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func7;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func7;

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 84
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func8;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func8;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 89
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func9;)V
    .registers 3
    .param p1, "f"    # Lrx/functions/Func9;

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 94
    return-void
.end method

.method public constructor <init>(Lrx/functions/FuncN;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "f":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-[",
            "Lrx/Observable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v2, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v3, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    invoke-direct {v2, p1, v3}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    .line 100
    .local v2, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v0, v2}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 101
    .local v0, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorZip$ZipSubscriber;

    invoke-direct {v1, p0, p1, v2, v0}, Lrx/internal/operators/OperatorZip$ZipSubscriber;-><init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    .line 103
    .local v1, "subscriber":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 104
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 106
    return-object v1
.end method
