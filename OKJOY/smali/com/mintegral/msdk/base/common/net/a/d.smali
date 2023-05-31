.class public abstract Lcom/mintegral/msdk/base/common/net/a/d;
.super Lcom/mintegral/msdk/base/common/net/a/c;
.source "CommonMTGJSONObjectResponseHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/mintegral/msdk/base/common/net/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/net/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 15
    check-cast p1, Lorg/json/JSONObject;

    .line 1021
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1023
    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2d

    .line 1024
    :cond_23
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1025
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/a/d;->a(Lorg/json/JSONObject;)V

    .line 1026
    :goto_2c
    return-void

    .line 1027
    :cond_2d
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/a/d;->a(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method
