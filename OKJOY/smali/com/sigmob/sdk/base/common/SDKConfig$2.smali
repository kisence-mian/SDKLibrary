.class Lcom/sigmob/sdk/base/common/SDKConfig$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/SDKConfig;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/SDKConfig;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/SDKConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/SDKConfig$2;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;->config:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig$2;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;->config:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->a(Lcom/sigmob/sdk/base/common/SDKConfig;Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V

    :goto_12
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig$2;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->b(Lcom/sigmob/sdk/base/common/SDKConfig;)V

    return-void

    :cond_18
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;->error_message:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig$2;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->b(Lcom/sigmob/sdk/base/common/SDKConfig;)V

    return-void
.end method
