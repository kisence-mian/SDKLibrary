.class Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;

.field final synthetic val$n:J


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;J)V
    .registers 4
    .param p1, "this$1"    # Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;

    .line 113
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;

    iput-wide p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;->val$n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 116
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;->this$1:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->val$p:Lcom/tds/common/reactor/Producer;

    iget-wide v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;->val$n:J

    invoke-interface {v0, v1, v2}, Lcom/tds/common/reactor/Producer;->request(J)V

    .line 117
    return-void
.end method
