.class public final Lcom/mintegral/msdk/videocommon/b/a;
.super Ljava/lang/Object;
.source "AdParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/b/a;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/b/a;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/videocommon/b/a;
    .registers 4

    .prologue
    .line 42
    if-eqz p0, :cond_18

    .line 44
    :try_start_2
    const-string v0, "appId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v0, "placementId"

    .line 46
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v0, Lcom/mintegral/msdk/videocommon/b/a;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    .line 53
    :goto_13
    return-object v0

    .line 50
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method
