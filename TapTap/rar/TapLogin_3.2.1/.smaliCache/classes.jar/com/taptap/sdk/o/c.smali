.class public Lcom/taptap/sdk/o/c;
.super Ljava/lang/Object;
.source "CloudGameInitializeFinish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/o/c$a;,
        Lcom/taptap/sdk/o/c$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/taptap/sdk/o/c$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/c;
    .registers 3

    .line 1
    new-instance v0, Lcom/taptap/sdk/o/c;

    invoke-direct {v0}, Lcom/taptap/sdk/o/c;-><init>()V

    if-eqz p0, :cond_28

    :try_start_7
    const-string v1, "type"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/c;->a:Ljava/lang/String;

    const-string v1, "message_id"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/c;->b:Ljava/lang/String;

    const-string v1, "data"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/taptap/sdk/o/c$b;->a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/c$b;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/o/c;->c:Lcom/taptap/sdk/o/c$b;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_24

    goto :goto_28

    .line 10
    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    return-object v0
.end method
