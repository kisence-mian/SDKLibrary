.class final Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter;
.super Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7404e4d77326a273L


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 216
    return-void
.end method


# virtual methods
.method onOverflow()V
    .registers 1

    .line 221
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$DropEmitter<TT;>;"
    return-void
.end method
