.class Lcom/tapsdk/bootstrap/TapBootstrapImpl$1;
.super Ljava/lang/Object;
.source "TapBootstrapImpl.java"

# interfaces
.implements Lcom/tds/common/entities/TapAccountProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initOtherComponent(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    .line 150
    iput-object p1, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl$1;->this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/tds/common/entities/AccessToken;
    .registers 5

    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/AccessToken;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "object":Lorg/json/JSONObject;
    new-instance v1, Lcom/tds/common/entities/AccessToken;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/entities/AccessToken;-><init>(Lorg/json/JSONObject;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    .line 156
    .end local v0    # "object":Lorg/json/JSONObject;
    :catch_1e
    move-exception v0

    .line 157
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to convert TapAccessToken, cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->w(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUserInfo()Lcom/tds/common/reactor/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    .line 165
    .local v0, "tapProfile":Lcom/taptap/sdk/Profile;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v1, "mapData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2f

    .line 167
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getOpenid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getUnionid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unionid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v2

    const-string v3, "avatar"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_2f
    invoke-static {v1}, Lcom/tds/common/reactor/Observable;->just(Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    return-object v2
.end method
