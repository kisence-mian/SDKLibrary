.class public Lcom/taptap/sdk/o/g;
.super Ljava/lang/Object;
.source "CloudGameReceiptMessage.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/taptap/sdk/o/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/g;
    .registers 3

    .line 1
    new-instance v0, Lcom/taptap/sdk/o/g;

    invoke-direct {v0}, Lcom/taptap/sdk/o/g;-><init>()V

    :try_start_5
    const-string v1, "type"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/g;->a:Ljava/lang/String;

    const-string v1, "message_id"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/g;->b:Ljava/lang/String;

    const-string v1, "data"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/taptap/sdk/o/f;->a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/f;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/o/g;->c:Lcom/taptap/sdk/o/f;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_26

    .line 7
    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-object v0
.end method
