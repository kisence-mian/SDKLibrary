.class public Lcom/tapsdk/bootstrap/exceptions/TapError;
.super Ljava/lang/RuntimeException;
.source "TapError.java"


# instance fields
.field public final code:I

.field public final debugMessage:Ljava/lang/String;

.field public final detailMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "debugMessage"    # Ljava/lang/String;
    .param p3, "detailMessage"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    iput p1, p0, Lcom/tapsdk/bootstrap/exceptions/TapError;->code:I

    .line 14
    iput-object p2, p0, Lcom/tapsdk/bootstrap/exceptions/TapError;->debugMessage:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/tapsdk/bootstrap/exceptions/TapError;->detailMessage:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public toJSON()Ljava/lang/String;
    .registers 4

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "code"

    iget v2, p0, Lcom/tapsdk/bootstrap/exceptions/TapError;->code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string v1, "error_description"

    iget-object v2, p0, Lcom/tapsdk/bootstrap/exceptions/TapError;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14

    .line 25
    goto :goto_18

    .line 23
    :catch_14
    move-exception v1

    .line 24
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 26
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
