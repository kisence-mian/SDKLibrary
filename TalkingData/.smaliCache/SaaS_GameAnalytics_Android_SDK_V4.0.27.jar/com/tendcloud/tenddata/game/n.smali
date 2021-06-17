.class Lcom/tendcloud/tenddata/game/n;
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

    .line 961
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/n;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/n;->val$service:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/n;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 965
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 966
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/n;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "pay"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 971
    const-string v2, "accountId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/n;->val$account:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v2, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    .line 976
    goto :goto_4f

    .line 974
    :catchall_4e
    move-exception v0

    .line 977
    :goto_4f
    return-void
.end method
