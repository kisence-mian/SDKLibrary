.class Lcom/tendcloud/tenddata/game/ag;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/zz;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/game/a;

.field final synthetic val$type:Lcom/tendcloud/tenddata/game/af$AccountType;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;)V
    .registers 6

    .line 563
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ag;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ag;->val$service:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ag;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/ag;->val$type:Lcom/tendcloud/tenddata/game/af$AccountType;

    iput-object p5, p0, Lcom/tendcloud/tenddata/game/ag;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 567
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 568
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "account"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "login"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "accountId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->val$type:Lcom/tendcloud/tenddata/game/af$AccountType;

    if-eqz v1, :cond_47

    .line 575
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "type"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->val$type:Lcom/tendcloud/tenddata/game/af$AccountType;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/af$AccountType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_47
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ag;->val$name:Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 578
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "name"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ag;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_54
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_61
    .catchall {:try_start_0 .. :try_end_61} :catchall_62

    .line 583
    goto :goto_63

    .line 581
    :catchall_62
    move-exception v0

    .line 584
    :goto_63
    return-void
.end method
