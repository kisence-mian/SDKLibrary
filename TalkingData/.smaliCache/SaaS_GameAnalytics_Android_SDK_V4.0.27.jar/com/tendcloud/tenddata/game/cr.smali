.class Lcom/tendcloud/tenddata/game/cr;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field appId:Ljava/lang/String;

.field channelId:Ljava/lang/String;

.field features:Lcom/tendcloud/tenddata/game/a;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cq;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cq;Landroid/os/Looper;)V
    .registers 3

    .line 98
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cr;->this$0:Lcom/tendcloud/tenddata/game/cq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 105
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2a

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 107
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->appId:Ljava/lang/String;

    .line 108
    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->channelId:Ljava/lang/String;

    .line 109
    const-string v1, "Features"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->features:Lcom/tendcloud/tenddata/game/a;

    .line 112
    :cond_2a
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_52

    goto :goto_4c

    .line 119
    :pswitch_30
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cq;->a(Z)Z

    .line 120
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cr;->this$0:Lcom/tendcloud/tenddata/game/cq;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->features:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cq;->a(Lcom/tendcloud/tenddata/game/cq;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 121
    goto :goto_4c

    .line 115
    :pswitch_40
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cr;->this$0:Lcom/tendcloud/tenddata/game/cq;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->features:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cq;->a(Lcom/tendcloud/tenddata/game/cq;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4d

    .line 116
    nop

    .line 128
    :goto_4c
    goto :goto_51

    .line 125
    :catchall_4d
    move-exception p1

    .line 127
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 129
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_40
        :pswitch_30
    .end packed-switch
.end method
