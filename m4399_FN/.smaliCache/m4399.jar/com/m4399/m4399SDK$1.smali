.class Lcom/m4399/m4399SDK$1;
.super Ljava/lang/Object;
.source "m4399SDK.java"

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m4399/m4399SDK;->Init(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m4399/m4399SDK;


# direct methods
.method constructor <init>(Lcom/m4399/m4399SDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/m4399/m4399SDK;

    .line 65
    iput-object p1, p0, Lcom/m4399/m4399SDK$1;->this$0:Lcom/m4399/m4399SDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/m4399/m4399SDK$1;->this$0:Lcom/m4399/m4399SDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m4399SDK \u521d\u59cb\u5316\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onSucceed()V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/m4399/m4399SDK$1;->this$0:Lcom/m4399/m4399SDK;

    const-string v1, "m4399SDK \u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/m4399/m4399SDK$1;->this$0:Lcom/m4399/m4399SDK;

    invoke-virtual {v1}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/m4399/m4399SDK$1$1;

    invoke-direct {v2, p0}, Lcom/m4399/m4399SDK$1$1;-><init>(Lcom/m4399/m4399SDK$1;)V

    const-string v3, "checkUpdate"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    .line 122
    return-void
.end method
