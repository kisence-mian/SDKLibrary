.class public final Lrx/internal/operators/OperatorWindowWithObservable;
.super Ljava/lang/Object;
.source "OperatorWindowWithObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;,
        Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;
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
        "<",
        "Lrx/Observable",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final NEXT_SUBJECT:Ljava/lang/Object;

.field static final NL:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWindowWithObservable;->NEXT_SUBJECT:Ljava/lang/Object;

    .line 39
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorWindowWithObservable;->NL:Lrx/internal/operators/NotificationLite;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable;, "Lrx/internal/operators/OperatorWindowWithObservable<TT;TU;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithObservable;->other:Lrx/Observable;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable;, "Lrx/internal/operators/OperatorWindowWithObservable<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservable;, "Lrx/internal/operators/OperatorWindowWithObservable<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    .local v1, "sub":Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;)V

    .line 51
    .local v0, "bs":Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 52
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 54
    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber;->replaceWindow()V

    .line 56
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithObservable;->other:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 58
    return-object v1
.end method
