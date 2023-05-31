.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;
.super Ljava/lang/Object;
.source "OnSubscribeTimeoutTimedWithFallback.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeoutTask"
.end annotation


# instance fields
.field final idx:J

.field final synthetic this$0:Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;
    .param p2, "idx"    # J

    .line 166
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>.TimeoutTask;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;->this$0:Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-wide p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;->idx:J

    .line 168
    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 172
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>.TimeoutTask;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;->this$0:Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;

    iget-wide v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;->idx:J

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->onTimeout(J)V

    .line 173
    return-void
.end method
