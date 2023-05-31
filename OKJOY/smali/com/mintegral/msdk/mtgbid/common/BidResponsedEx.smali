.class public Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;
.super Lcom/mintegral/msdk/mtgbid/out/BidResponsed;
.source "BidResponsedEx.java"


# static fields
.field public static final KEY_CID:Ljava/lang/String; = "cid"

.field public static final KEY_MACORS:Ljava/lang/String; = "macors"

.field public static final TAG:Ljava/lang/String; = "BidResponsedEx"


# instance fields
.field private cid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;-><init>()V

    return-void
.end method

.method public static decodePrice(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    return-object p0
.end method

.method public static parseBidResponsedEx(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;
    .registers 10

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    if-eqz p0, :cond_77

    .line 69
    :try_start_3
    new-instance v1, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;

    invoke-direct {v1}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_78

    .line 70
    :try_start_8
    const-string v0, "bid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->setBidId(Ljava/lang/String;)V

    .line 72
    const-string v0, "cur"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->setCur(Ljava/lang/String;)V

    .line 73
    const-string v0, "price"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->setPrice(Ljava/lang/String;)V

    .line 76
    const-string v0, "cid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->setCid(Ljava/lang/String;)V

    .line 78
    const-string v0, "token"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->setBidToken(Ljava/lang/String;)V

    .line 79
    const-string v0, "macors"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 80
    const-string v0, "ln"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "wn"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    if-eqz v4, :cond_70

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_70

    .line 84
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v2

    move-object v2, v0

    .line 85
    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 86
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-static {v2, v0, v6}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->replaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v3, v0, v6}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->replaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_55

    :cond_6e
    move-object v0, v2

    move-object v2, v3

    .line 93
    :cond_70
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->setLn(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->setWn(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_76} :catch_83

    move-object v0, v1

    .line 101
    :cond_77
    :goto_77
    return-object v0

    .line 97
    :catch_78
    move-exception v1

    .line 98
    :goto_79
    const-string v2, "BidResponsedEx"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 97
    :catch_83
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_79
.end method

.method private static replaceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 106
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object p0

    .line 113
    :cond_2b
    :goto_2b
    return-object p0

    .line 111
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->cid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setLn(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->ln:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setWn(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;->wn:Ljava/lang/String;

    .line 47
    return-void
.end method
