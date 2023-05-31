.class public Lcom/taptap/sdk/o/d;
.super Ljava/lang/Object;
.source "CloudGameLoginResData.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/d;
    .registers 3

    .line 1
    new-instance v0, Lcom/taptap/sdk/o/d;

    invoke-direct {v0}, Lcom/taptap/sdk/o/d;-><init>()V

    :try_start_5
    const-string v1, "code"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/d;->a:Ljava/lang/String;

    const-string v1, "state"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/d;->b:Ljava/lang/String;

    const-string v1, "cancel"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/taptap/sdk/o/d;->c:Z

    const-string v1, "error"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/o/d;->d:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_2a

    .line 8
    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    return-object v0
.end method
