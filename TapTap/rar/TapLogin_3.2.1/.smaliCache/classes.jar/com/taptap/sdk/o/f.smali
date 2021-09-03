.class public Lcom/taptap/sdk/o/f;
.super Ljava/lang/Object;
.source "CloudGameReceiptData.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/f;
    .registers 3

    .line 1
    new-instance v0, Lcom/taptap/sdk/o/f;

    invoke-direct {v0}, Lcom/taptap/sdk/o/f;-><init>()V

    :try_start_5
    const-string v1, "success"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/taptap/sdk/o/f;->a:Z

    const-string v1, "message_id"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/o/f;->b:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_1a

    .line 6
    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-object v0
.end method
