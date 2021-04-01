.class public final Lcom/mintegral/msdk/mtgbanner/common/bridge/a;
.super Ljava/lang/Object;
.source "BannerJSBridgeImpl.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgbanner/common/bridge/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

.field private g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "BannerJSBridgeImpl"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->a:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->h:Z

    .line 55
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->d:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method private b()Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 310
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 311
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v0, :cond_7

    .line 85
    iput-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    if-eqz v0, :cond_d

    .line 89
    iput-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    .line 91
    :cond_d
    return-void
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 80
    iput p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->e:I

    .line 81
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/mtgbanner/common/b/a;)V
    .registers 2

    .prologue
    .line 65
    if-eqz p1, :cond_4

    .line 66
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    .line 68
    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 96
    :try_start_0
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_12

    .line 97
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "onJSBridgeConnected"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 103
    :cond_12
    :goto_12
    return-void

    .line 100
    :catch_13
    move-exception v0

    .line 101
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "onJSBridgeConnect"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 109
    if-eqz p1, :cond_22

    .line 110
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v1, "isReady"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->codeToJsonString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v1, :cond_22

    .line 116
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->b(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_23

    .line 122
    :cond_22
    :goto_22
    return-void

    .line 119
    :catch_23
    move-exception v0

    .line 120
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "readyStatus"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 156
    const-string v0, "BannerJSBridgeImpl"

    const-string v1, "click"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    if-nez v0, :cond_c

    .line 174
    :cond_b
    :goto_b
    return-void

    .line 162
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v1, :cond_b

    .line 168
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_b

    .line 171
    :catch_2b
    move-exception v0

    .line 172
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "click"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    .line 77
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 126
    const-string v0, "BannerJSBridgeImpl"

    const-string v1, "BANNER INIT INVOKE"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/util/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/util/b;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 131
    const-string v3, "dev_close_state"

    iget v4, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->e:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v3, "sdkSetting"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "device"

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/util/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "campaignList"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 136
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 137
    if-nez v0, :cond_57

    .line 138
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 140
    :cond_57
    const-string v2, "unitSetting"

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->y()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 142
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 144
    const-string v2, "appSetting"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_7f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_92} :catch_93

    .line 152
    :goto_92
    return-void

    .line 149
    :catch_93
    move-exception v0

    .line 150
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "init"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_92
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 194
    const-string v0, "BannerJSBridgeImpl"

    const-string v1, "triggerCloseBtn"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v0, :cond_20

    .line 200
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a()V

    .line 202
    :cond_20
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->codeToJsonString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2b} :catch_2c

    .line 208
    :cond_2b
    :goto_2b
    return-void

    .line 204
    :catch_2c
    move-exception v0

    .line 205
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "triggerCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->codeToJsonString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 178
    const-string v0, "BannerJSBridgeImpl"

    const-string v1, "toggleCloseBtn"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v1, :cond_21

    .line 184
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_21} :catch_22

    .line 190
    :cond_21
    :goto_21
    return-void

    .line 187
    :catch_22
    move-exception v0

    .line 188
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "toggleCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 251
    const-string v0, "BannerJSBridgeImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportUrls:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 254
    :try_start_1b
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v7, v6

    .line 255
    :goto_21
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_4f

    .line 256
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 257
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 258
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v4, 0x0

    if-eqz v5, :cond_4d

    const/4 v5, 0x1

    :goto_46
    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 255
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_21

    :cond_4d
    move v5, v6

    .line 259
    goto :goto_46

    .line 261
    :cond_4f
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->codeToJsonString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_5a} :catch_5b

    .line 266
    :cond_5a
    :goto_5a
    return-void

    .line 262
    :catch_5b
    move-exception v0

    .line 263
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "reportUrls"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a
.end method

.method public final c(Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 212
    const-string v0, "BannerJSBridgeImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendImpressions:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 215
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_64

    .line 218
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 220
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 221
    iget-object v6, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->d:Ljava/lang/String;

    const-string v7, "banner"

    invoke-static {v6, v0, v7}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_56} :catch_57

    goto :goto_36

    .line 244
    :catch_57
    move-exception v0

    .line 245
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "sendImpressions"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :cond_5f
    :goto_5f
    return-void

    .line 217
    :cond_60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 228
    :cond_64
    :try_start_64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/bridge/a$1;

    invoke-direct {v1, p0, v3}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a$1;-><init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/a;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_71} :catch_57

    goto :goto_5f
.end method

.method public final close()V
    .registers 4

    .prologue
    .line 292
    const-string v0, "BannerJSBridgeImpl"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v0, :cond_10

    .line 295
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->b()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_11

    .line 300
    :cond_10
    :goto_10
    return-void

    .line 297
    :catch_11
    move-exception v0

    .line 298
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "close"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public final expand(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 329
    :try_start_0
    const-string v0, ""

    .line 330
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 331
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 332
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_1e
    :goto_1e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 337
    const-string v2, "url"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    :goto_2b
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 341
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 358
    :goto_4b
    return-void

    .line 332
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:////"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_64
    move-object v0, p1

    .line 337
    goto :goto_2b

    .line 344
    :cond_66
    new-instance v2, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-direct {v2, v0, v1, v3}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/mintegral/msdk/mtgbanner/common/b/a;)V

    iput-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    .line 345
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->setCampaignList(Ljava/lang/String;Ljava/util/List;)V

    .line 346
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->g:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->show()V

    .line 349
    :cond_85
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v0, :cond_8f

    .line 350
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(Z)V

    .line 353
    :cond_8f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->b()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/d/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_98} :catch_99

    goto :goto_4b

    .line 355
    :catch_99
    move-exception v0

    .line 356
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "expand"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method public final open(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 270
    const-string v0, "BannerJSBridgeImpl"

    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :try_start_8
    const-string v0, "BannerJSBridgeImpl"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2d

    .line 276
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 277
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p1, v0

    .line 282
    :cond_2d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v0, :cond_37

    .line 283
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(ZLjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_37} :catch_38

    .line 288
    :cond_37
    :goto_37
    return-void

    .line 285
    :catch_38
    move-exception v0

    .line 286
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "open"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method public final unload()V
    .registers 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->close()V

    .line 305
    return-void
.end method

.method public final useCustomClose(Z)V
    .registers 5

    .prologue
    .line 317
    if-eqz p1, :cond_d

    const/4 v0, 0x0

    .line 318
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v1, :cond_c

    .line 319
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->f:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_f

    .line 324
    :cond_c
    :goto_c
    return-void

    .line 317
    :cond_d
    const/4 v0, 0x1

    goto :goto_3

    .line 321
    :catch_f
    move-exception v0

    .line 322
    const-string v1, "BannerJSBridgeImpl"

    const-string v2, "useCustomClose"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
