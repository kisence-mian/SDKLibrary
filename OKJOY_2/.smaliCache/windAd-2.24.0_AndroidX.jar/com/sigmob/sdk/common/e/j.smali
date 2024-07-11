.class public Lcom/sigmob/sdk/common/e/j;
.super Lcom/sigmob/sdk/common/e/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/e/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/common/e/k<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/sigmob/sdk/common/e/j$a;

.field private final c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/common/e/j$a;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sigmob/sdk/common/e/k;-><init>(Ljava/lang/String;ILcom/sigmob/volley/o$a;)V

    iput-object p2, p0, Lcom/sigmob/sdk/common/e/j;->b:Lcom/sigmob/sdk/common/e/j$a;

    new-instance p1, Lcom/sigmob/volley/d;

    const/16 p2, 0x2710

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/sigmob/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/j;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/j;->a(Z)Lcom/sigmob/volley/m;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createSdkConfigRequest()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/volley/j;->b:[B

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/volley/l;

    invoke-direct {v0, p1}, Lcom/sigmob/volley/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method protected a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->b:Lcom/sigmob/sdk/common/e/j$a;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/common/e/j$a;->a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/j;->a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigResponse;)V

    return-void
.end method

.method public b()[B
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->country(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_23
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->language(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_4a
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->android_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_65
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->imei(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_80
    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createGeo()Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->geo(Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createDevice()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->device(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->gaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_b5
    iget-object v0, p0, Lcom/sigmob/sdk/common/e/j;->c:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send SdkConfig Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest;->encode()[B

    move-result-object v0

    return-object v0
.end method
