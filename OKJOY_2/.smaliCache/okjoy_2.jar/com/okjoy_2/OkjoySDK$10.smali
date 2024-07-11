.class Lcom/okjoy_2/OkjoySDK$10;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/api/listener/OkJoySdkArchivesUploadFileListener;


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

    .line 650
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$10;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    .line 660
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$10;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;

    .line 654
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$10;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 655
    return-void
.end method
