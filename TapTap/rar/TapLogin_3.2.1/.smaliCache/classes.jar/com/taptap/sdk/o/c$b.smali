.class public Lcom/taptap/sdk/o/c$b;
.super Ljava/lang/Object;
.source "CloudGameInitializeFinish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/taptap/sdk/o/c$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/c$b;
    .registers 3

    .line 1
    new-instance v0, Lcom/taptap/sdk/o/c$b;

    invoke-direct {v0}, Lcom/taptap/sdk/o/c$b;-><init>()V

    if-eqz p0, :cond_20

    :try_start_7
    const-string v1, "XUA"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/c$b;->a:Ljava/lang/String;

    const-string v1, "CGPN"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/taptap/sdk/o/c$a;->a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/c$a;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/o/c$b;->b:Lcom/taptap/sdk/o/c$a;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_20

    .line 9
    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    return-object v0
.end method
