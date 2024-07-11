.class Lcom/okjoy_2/OkjoySDK$3;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy_2/OkjoySDK;->sdk_listener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/okjoy_2/OkjoySDK;


# direct methods
.method constructor <init>(Lcom/okjoy_2/OkjoySDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/okjoy_2/OkjoySDK;

    .line 481
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    .line 502
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {v0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 505
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    # invokes: Lcom/okjoy_2/OkjoySDK;->LoginResult(ZLcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    invoke-static {v0, v2, p1}, Lcom/okjoy_2/OkjoySDK;->access$100(Lcom/okjoy_2/OkjoySDK;ZLcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    .line 506
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    .registers 6
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    .line 485
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vsign = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getVsign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/okjoy_2/OkjoySDK;->m_userID:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/okjoy_2/OkjoySDK;->m_userName:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {v0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 496
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    # invokes: Lcom/okjoy_2/OkjoySDK;->sdk_submitRoleId(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    invoke-static {v0, p1}, Lcom/okjoy_2/OkjoySDK;->access$000(Lcom/okjoy_2/OkjoySDK;Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    .line 497
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$3;->this$0:Lcom/okjoy_2/OkjoySDK;

    const/4 v1, 0x1

    # invokes: Lcom/okjoy_2/OkjoySDK;->LoginResult(ZLcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V
    invoke-static {v0, v1, p1}, Lcom/okjoy_2/OkjoySDK;->access$100(Lcom/okjoy_2/OkjoySDK;ZLcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    .line 498
    return-void
.end method
