.class Lcom/transsion/TranssionSDK$6;
.super Lcom/transsion/gamead/GameAdDisplayCallback;
.source "TranssionSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/TranssionSDK;->PlayAD(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/TranssionSDK;


# direct methods
.method constructor <init>(Lcom/transsion/TranssionSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/transsion/TranssionSDK;

    .line 320
    iput-object p1, p0, Lcom/transsion/TranssionSDK$6;->this$0:Lcom/transsion/TranssionSDK;

    invoke-direct {p0}, Lcom/transsion/gamead/GameAdDisplayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .registers 6
    .param p1, "var1"    # I

    .line 331
    iget-object v0, p0, Lcom/transsion/TranssionSDK$6;->this$0:Lcom/transsion/TranssionSDK;

    const-string v1, "TranssionSDK failure successful"

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/transsion/TranssionSDK$6;->this$0:Lcom/transsion/TranssionSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Failed:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/TranssionSDK;->access$300(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public successful()V
    .registers 5

    .line 324
    invoke-super {p0}, Lcom/transsion/gamead/GameAdDisplayCallback;->successful()V

    .line 325
    iget-object v0, p0, Lcom/transsion/TranssionSDK$6;->this$0:Lcom/transsion/TranssionSDK;

    const-string v1, "TranssionSDK PlayAD successful"

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/TranssionSDK$6;->this$0:Lcom/transsion/TranssionSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Finished:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/TranssionSDK;->access$200(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 327
    return-void
.end method
