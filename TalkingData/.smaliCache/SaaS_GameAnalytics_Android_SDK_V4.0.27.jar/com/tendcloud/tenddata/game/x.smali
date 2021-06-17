.class Lcom/tendcloud/tenddata/game/x;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/zz;

.field final synthetic val$service:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 224
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/x;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/x;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 228
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/ct;->a()Lcom/tendcloud/tenddata/game/ct;

    .line 230
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 231
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "appId"

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->f()Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_5d

    const-string v4, ""

    if-eqz v3, :cond_25

    :try_start_20
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_25
    move-object v3, v4

    :goto_26
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "channelId"

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->g()Ljava/lang/String;

    move-result-object v4

    :cond_37
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/x;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "init"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    invoke-static {}, Lcom/tendcloud/tenddata/game/cy;->a()Lcom/tendcloud/tenddata/game/cy;
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_5d

    .line 243
    goto :goto_5e

    .line 241
    :catchall_5d
    move-exception v0

    .line 244
    :goto_5e
    return-void
.end method
