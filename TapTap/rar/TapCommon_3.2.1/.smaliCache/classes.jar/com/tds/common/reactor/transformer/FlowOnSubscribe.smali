.class public Lcom/tds/common/reactor/transformer/FlowOnSubscribe;
.super Ljava/lang/Object;
.source "FlowOnSubscribe.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;
    }
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
.field private final upstream:Lcom/tds/common/reactor/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe<TT;>;"
    .local p1, "upstream":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe;->upstream:Lcom/tds/common/reactor/Observable$OnSubscribe;

    .line 13
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/transformer/FlowOnSubscribe;->upstream:Lcom/tds/common/reactor/Observable$OnSubscribe;

    new-instance v1, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;

    invoke-direct {v1, p1}, Lcom/tds/common/reactor/transformer/FlowOnSubscribe$FlowOnSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    invoke-interface {v0, v1}, Lcom/tds/common/reactor/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 7
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowOnSubscribe;, "Lcom/tds/common/reactor/transformer/FlowOnSubscribe<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/transformer/FlowOnSubscribe;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
