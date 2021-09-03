.class final Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JustOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;->value:Ljava/lang/Object;

    .line 140
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    .local p1, "s":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;->value:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->createProducer(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)Lcom/tds/common/reactor/Producer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 145
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 135
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
