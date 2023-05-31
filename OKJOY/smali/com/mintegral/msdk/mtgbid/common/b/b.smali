.class public abstract Lcom/mintegral/msdk/mtgbid/common/b/b;
.super Lcom/mintegral/msdk/base/common/net/a/c;
.source "BidResponseHandler.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/c;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/b/b;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 15
    check-cast p1, Lorg/json/JSONObject;

    .line 1035
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1036
    const/16 v1, 0xc8

    if-ne v1, v0, :cond_28

    .line 1037
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/b/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->parseBidResponsedEx(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_1e

    .line 1039
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/b/b;->a(Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;)V

    .line 1041
    :goto_1d
    return-void

    :cond_1e
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/b/b;->b(Ljava/lang/String;)V

    goto :goto_1d

    .line 1044
    :cond_28
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/b/b;->b(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/mtgbid/common/b/b;->b(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method
