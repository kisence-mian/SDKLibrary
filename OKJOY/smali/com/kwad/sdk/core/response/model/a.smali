.class public Lcom/kwad/sdk/core/response/model/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/a;
    .registers 4

    new-instance v2, Lcom/kwad/sdk/core/response/model/a;

    invoke-direct {v2}, Lcom/kwad/sdk/core/response/model/a;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v2

    :goto_c
    return-object v0

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_18

    :goto_13
    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/response/model/a;->a(Lorg/json/JSONObject;)V

    move-object v0, v2

    goto :goto_c

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_13
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "videoBlackAreaClick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->a:I

    const-string v0, "videoBlackAreaNewStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->b:I

    const-string v0, "drawActionBarTimes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/a;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
