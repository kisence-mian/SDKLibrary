.class public Lcom/kwad/sdk/core/response/model/PhotoShareInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1af0c0e2c026347fL


# instance fields
.field public data:Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;

.field public errorMsg:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->data:Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;

    return-void
.end method


# virtual methods
.method public getShareUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->data:Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;->shareUrl:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public isResultDataEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->data:Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->result:I

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->errorMsg:Ljava/lang/String;

    :try_start_10
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoShareInfo;->data:Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/response/model/PhotoShareInfo$ShareUrlInfo;->parseJson(Lorg/json/JSONObject;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
