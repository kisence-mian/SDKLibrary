.class Lcom/sigmob/sdk/common/SDKConfig$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/e/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/common/SDKConfig;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/SDKConfig;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/SDKConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig$2;->a:Lcom/sigmob/sdk/common/SDKConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;->config:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/sigmob/sdk/common/SDKConfig$2;->a:Lcom/sigmob/sdk/common/SDKConfig;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;->config:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-static {v1, p1}, Lcom/sigmob/sdk/common/SDKConfig;->a(Lcom/sigmob/sdk/common/SDKConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    iget-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig$2;->a:Lcom/sigmob/sdk/common/SDKConfig;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/common/SDKConfig;->b(Lcom/sigmob/sdk/common/SDKConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    goto :goto_1d

    :cond_18
    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;->error_message:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1d
    iget-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig$2;->a:Lcom/sigmob/sdk/common/SDKConfig;

    invoke-static {p1}, Lcom/sigmob/sdk/common/SDKConfig;->b(Lcom/sigmob/sdk/common/SDKConfig;)V

    return-void
.end method

.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 2

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig$2;->a:Lcom/sigmob/sdk/common/SDKConfig;

    invoke-static {p1}, Lcom/sigmob/sdk/common/SDKConfig;->b(Lcom/sigmob/sdk/common/SDKConfig;)V

    return-void
.end method
