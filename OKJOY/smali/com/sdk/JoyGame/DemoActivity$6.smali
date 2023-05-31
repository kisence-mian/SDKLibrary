.class Lcom/sdk/JoyGame/DemoActivity$6;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Lcom/JoyFramework/common/IOnAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/JoyGame/DemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdk/JoyGame/DemoActivity;


# direct methods
.method constructor <init>(Lcom/sdk/JoyGame/DemoActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sdk/JoyGame/DemoActivity;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    .registers 4
    .param p1, "ad_type"    # Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .prologue
    .line 400
    sget-object v0, Lcom/sdk/JoyGame/DemoActivity$8;->$SwitchMap$com$JoyFramework$common$IOnAdListener$Ad_Type:[I

    invoke-virtual {p1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 414
    :goto_b
    return-void

    .line 402
    :pswitch_c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u70b9\u51fb\u4e86Banner\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 405
    :pswitch_14
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u70b9\u51fb\u4e86\u6fc0\u52b1\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 408
    :pswitch_1c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u70b9\u51fb\u4e86\u63d2\u5c4f\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 411
    :pswitch_24
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u70b9\u51fb\u4e86\u5176\u4ed6\u7c7b\u578b\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 400
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public onAdClose(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    .registers 4
    .param p1, "ad_type"    # Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .prologue
    .line 418
    sget-object v0, Lcom/sdk/JoyGame/DemoActivity$8;->$SwitchMap$com$JoyFramework$common$IOnAdListener$Ad_Type:[I

    invoke-virtual {p1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 432
    :goto_b
    return-void

    .line 420
    :pswitch_c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u5173\u95edBanner\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 423
    :pswitch_14
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u5173\u95ed\u6fc0\u52b1\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 426
    :pswitch_1c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u5173\u95ed\u63d2\u5c4f\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 429
    :pswitch_24
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u5173\u95ed\u5176\u4ed6\u7c7b\u578b\u5e7f\u544a"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 418
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V
    .registers 5
    .param p1, "ad_type"    # Lcom/JoyFramework/common/IOnAdListener$Ad_Type;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 436
    sget-object v0, Lcom/sdk/JoyGame/DemoActivity$8;->$SwitchMap$com$JoyFramework$common$IOnAdListener$Ad_Type:[I

    invoke-virtual {p1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 450
    :goto_b
    return-void

    .line 438
    :pswitch_c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "Banner\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 441
    :pswitch_14
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 444
    :pswitch_1c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 447
    :pswitch_24
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u5176\u4ed6\u7c7b\u578b\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 436
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public onAdShow(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    .registers 4
    .param p1, "ad_type"    # Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .prologue
    .line 382
    sget-object v0, Lcom/sdk/JoyGame/DemoActivity$8;->$SwitchMap$com$JoyFramework$common$IOnAdListener$Ad_Type:[I

    invoke-virtual {p1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 396
    :goto_b
    return-void

    .line 384
    :pswitch_c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "Banner\u5e7f\u544a\u663e\u793a\u4e2d..."

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 387
    :pswitch_14
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a\u663e\u793a\u4e2d..."

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 390
    :pswitch_1c
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u663e\u793a\u4e2d..."

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 393
    :pswitch_24
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u5176\u4ed6\u7c7b\u578b\u5e7f\u544a\u663e\u793a\u4e2d..."

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    goto :goto_b

    .line 382
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public onStimulateSuccess(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    .registers 4
    .param p1, "ad_type"    # Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .prologue
    .line 455
    sget-object v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    if-ne p1, v0, :cond_b

    .line 456
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$6;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u5956\u52b1\u73a9\u5bb6"

    # invokes: Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sdk/JoyGame/DemoActivity;->access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V

    .line 458
    :cond_b
    return-void
.end method
