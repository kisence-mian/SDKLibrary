.class public final Lrx/internal/operators/SingleOnSubscribeMap;
.super Ljava/lang/Object;
.source "SingleOnSubscribeMap.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final source:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation
.end field

.field final transformer:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeMap;, "Lrx/internal/operators/SingleOnSubscribeMap<TT;TR;>;"
    .local p1, "source":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p2, "transformer":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeMap;->source:Lrx/Single;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeMap;->transformer:Lrx/functions/Func1;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeMap;, "Lrx/internal/operators/SingleOnSubscribeMap<TT;TR;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOnSubscribeMap;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeMap;, "Lrx/internal/operators/SingleOnSubscribeMap<TT;TR;>;"
    .local p1, "o":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;

    iget-object v1, p0, Lrx/internal/operators/SingleOnSubscribeMap;->transformer:Lrx/functions/Func1;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;-><init>(Lrx/SingleSubscriber;Lrx/functions/Func1;)V

    .line 44
    .local v0, "parent":Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 45
    iget-object v1, p0, Lrx/internal/operators/SingleOnSubscribeMap;->source:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 46
    return-void
.end method
