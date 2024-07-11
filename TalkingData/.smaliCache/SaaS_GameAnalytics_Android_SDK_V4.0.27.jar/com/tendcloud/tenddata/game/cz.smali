.class Lcom/tendcloud/tenddata/game/cz;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cy;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cy;Landroid/os/Looper;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 89
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_2e

    goto :goto_2c

    .line 100
    :pswitch_6
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->a(Lcom/tendcloud/tenddata/game/cy;)V

    .line 102
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->c(Lcom/tendcloud/tenddata/game/cy;)V

    .line 104
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    const/4 v0, 0x2

    const-wide/32 v1, 0x927c0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cy;->a(IJ)V

    .line 105
    goto :goto_2c

    .line 91
    :pswitch_1a
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->a(Lcom/tendcloud/tenddata/game/cy;)V

    .line 92
    goto :goto_2c

    .line 94
    :pswitch_20
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->b(Lcom/tendcloud/tenddata/game/cy;)V

    .line 95
    goto :goto_2c

    .line 97
    :pswitch_26
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->c(Lcom/tendcloud/tenddata/game/cy;)V

    .line 98
    nop

    .line 109
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_6
    .end packed-switch
.end method
