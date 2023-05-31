.class public Lcom/sigmob/sdk/base/c/q;
.super Lcom/sigmob/sdk/base/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/base/c/s",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/c/r;

.field private final c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/c/r;)V
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sigmob/sdk/base/c/s;-><init>(Ljava/lang/String;ILcom/sigmob/volley/y;)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/sigmob/sdk/base/c/q;->a:Lcom/sigmob/sdk/base/c/r;

    new-instance v0, Lcom/sigmob/volley/g;

    const/16 v1, 0x2710

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/volley/g;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/q;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/q;->a(Z)Lcom/sigmob/volley/q;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->g()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/q;->c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/volley/n;->b:[B

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/sigmob/volley/p;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/p;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_12
.end method

.method protected a(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->a:Lcom/sigmob/sdk/base/c/r;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/c/r;->a(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/c/q;->a(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigResponse;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public c()[B
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->country(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_23
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->language(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_4a
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->android_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_65
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->imei(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_80
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->av()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->av()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->gaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_9b
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->c:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send SdkConfig Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/sigmob/sdk/base/c/r;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/q;->a:Lcom/sigmob/sdk/base/c/r;

    return-object v0
.end method
