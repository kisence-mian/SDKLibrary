.class Lcom/tendcloud/tenddata/game/ad;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/zz;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V
    .registers 4

    .line 489
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ad;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ad;->val$service:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ad;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 493
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 494
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "account"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "login"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ad;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "accountId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ad;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    .line 502
    goto :goto_45

    .line 500
    :catchall_44
    move-exception v0

    .line 503
    :goto_45
    return-void
.end method
