.class Lcom/taptap/pay/sdk/library/TapPurchase;
.super Ljava/lang/Object;
.source "TapPurchase.java"


# instance fields
.field public isBought:Z

.field public mCurrencyCode:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mOriginData:Ljava/lang/String;

.field public mPrice:D

.field public mTitle:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "originData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mOriginData:Ljava/lang/String;

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mId:Ljava/lang/String;

    .line 25
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mType:Ljava/lang/String;

    .line 26
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mTitle:Ljava/lang/String;

    .line 27
    const-string v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mPrice:D

    .line 28
    const-string v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mCurrencyCode:Ljava/lang/String;

    .line 29
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mDescription:Ljava/lang/String;

    .line 30
    const-string v1, "is_bought"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->isBought:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getSku()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapPurchase;->mId:Ljava/lang/String;

    return-object v0
.end method
