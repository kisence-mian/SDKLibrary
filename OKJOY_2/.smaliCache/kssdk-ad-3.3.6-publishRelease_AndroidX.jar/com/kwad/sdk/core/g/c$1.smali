.class final Lcom/kwad/sdk/core/g/c$1;
.super Lcom/kwad/sdk/core/network/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/i<",
        "Lcom/kwad/sdk/core/g/b;",
        "Lcom/kwad/sdk/core/response/model/SdkConfigData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/kwad/sdk/core/g/b;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/g/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/g/b;-><init>()V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/SdkConfigData;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/kwad/sdk/core/response/model/SdkConfigData;

    invoke-direct {p1}, Lcom/kwad/sdk/core/response/model/SdkConfigData;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/response/model/SdkConfigData;->parseJson(Lorg/json/JSONObject;)V

    :try_start_d
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->f()Z

    move-result v0

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_25

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {v1}, Lcom/kwai/video/ksvodplayerkit/KSVodPlayerCoreInitConfig;->updatePlayerConfig(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_25
    :goto_25
    return-object p1
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/kwad/sdk/core/network/BaseResultData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/g/c$1;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/SdkConfigData;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b()Lcom/kwad/sdk/core/network/g;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/g/c$1;->a()Lcom/kwad/sdk/core/g/b;

    move-result-object v0

    return-object v0
.end method
