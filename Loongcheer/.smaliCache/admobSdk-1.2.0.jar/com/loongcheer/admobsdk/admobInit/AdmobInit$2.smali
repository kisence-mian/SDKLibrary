.class Lcom/loongcheer/admobsdk/admobInit/AdmobInit$2;
.super Landroid/os/Handler;
.source "AdmobInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 363
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$2;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 366
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2a

    .line 369
    :pswitch_9
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$2;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->cashAd(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->access$300(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;Landroid/app/Activity;)V

    .line 370
    const-string v0, "admob \u8fdb\u5165\u5b9a\u65f6\u4efb\u52a1"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 371
    const-string v1, "loongcheer_ad_log"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$2;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    # getter for: Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->access$400(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x112

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 376
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x112
        :pswitch_9
    .end packed-switch
.end method
