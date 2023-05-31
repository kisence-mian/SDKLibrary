.class public Lcom/taptap/sdk/o/e;
.super Ljava/lang/Object;
.source "CloudGameLoginResponse.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/taptap/sdk/o/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/e;
    .registers 3

    .line 1
    new-instance v0, Lcom/taptap/sdk/o/e;

    invoke-direct {v0}, Lcom/taptap/sdk/o/e;-><init>()V

    :try_start_5
    const-string v1, "type"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/e;->a:Ljava/lang/String;

    const-string v1, "message_id"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/e;->b:Ljava/lang/String;

    const-string v1, "data"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/taptap/sdk/o/d;->a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/d;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/o/e;->c:Lcom/taptap/sdk/o/d;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_26

    .line 8
    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-object v0
.end method
