.class Lcom/okjoy_2/OkjoySDK$11;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesGetFileListener;


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

    .line 664
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$11;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    .line 678
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$11;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    .line 668
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$11;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$11;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b58\u6863\u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$11;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u5730\u5b58\u6863\u6587\u4ef6\u8def\u5f84"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 673
    return-void
.end method
