.class public Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;
.super Ljava/lang/Object;
.source "FlowArbiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/transformer/FlowArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final code:I

.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;"
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;-><init>(ILjava/lang/Object;)V

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;, "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;->code:I

    .line 19
    iput-object p2, p0, Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;->data:Ljava/lang/Object;

    .line 20
    return-void
.end method
