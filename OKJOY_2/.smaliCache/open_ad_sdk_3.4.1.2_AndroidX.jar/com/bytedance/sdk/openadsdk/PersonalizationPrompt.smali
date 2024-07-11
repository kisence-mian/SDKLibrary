.class public Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;
.super Ljava/lang/Object;
.source "PersonalizationPrompt.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->a:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;
    .registers 4

    .line 32
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 33
    return-object v0

    .line 35
    :cond_4
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_29

    .line 40
    :cond_1d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;-><init>()V

    .line 41
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->b(Ljava/lang/String;)V

    .line 42
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->a(Ljava/lang/String;)V

    .line 43
    return-object v0

    .line 38
    :cond_29
    :goto_29
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :try_start_5
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_18

    .line 53
    goto :goto_1c

    .line 51
    :catch_18
    move-exception v1

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    :goto_1c
    return-object v0
.end method
