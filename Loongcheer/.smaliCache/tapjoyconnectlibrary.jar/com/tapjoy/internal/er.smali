.class public final Lcom/tapjoy/internal/er;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/lang/String;


# instance fields
.field public a:Lcom/tapjoy/TJAdUnitJSBridge;

.field private c:Lcom/tapjoy/internal/cm;

.field private d:Lcom/tapjoy/internal/cn;

.field private e:Lcom/tapjoy/internal/cv;

.field private f:Lcom/tapjoy/internal/cy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/internal/er;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/tapjoy/Tapjoy;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 2000
    const-string v1, "Tapjoy"

    const-string v2, "Name is null or empty"

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Version is null or empty"

    invoke-static {v0, v2}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tapjoy/internal/cv;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/cv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object v2, p0, Lcom/tapjoy/internal/er;->e:Lcom/tapjoy/internal/cv;

    .line 43
    iput-object p1, p0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/er;)Lcom/tapjoy/TJAdUnitJSBridge;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object p0
.end method

.method static synthetic a(Lcom/tapjoy/internal/er;Lcom/tapjoy/internal/cm;)Lcom/tapjoy/internal/cm;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/tapjoy/internal/er;->c:Lcom/tapjoy/internal/cm;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/er;Lcom/tapjoy/internal/cn;)Lcom/tapjoy/internal/cn;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/tapjoy/internal/er;->d:Lcom/tapjoy/internal/cn;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/er;Lcom/tapjoy/internal/cy;)Lcom/tapjoy/internal/cy;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/tapjoy/internal/er;->f:Lcom/tapjoy/internal/cy;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Lcom/tapjoy/internal/er;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/tapjoy/internal/er;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cv;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/tapjoy/internal/er;->e:Lcom/tapjoy/internal/cv;

    return-object p0
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/cw;",
            ">;"
        }
    .end annotation

    .line 227
    const-string v0, "TJOMViewabilityAgent"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 232
    :try_start_e
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_12} :catch_6c

    .line 236
    nop

    .line 238
    const-string v4, "vendorJSResource"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    if-nez v4, :cond_22

    .line 240
    const-string v3, "Vendor JS URL not found. Skipping."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    goto :goto_73

    .line 246
    :cond_22
    :try_start_22
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_5d

    .line 250
    nop

    .line 252
    const-string v4, "vendorName"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    const-string v7, "vendorParameters"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    const-string v7, "ResourceURL is null"

    if-eqz v3, :cond_4f

    if-nez v4, :cond_3b

    goto :goto_4f

    .line 260
    :cond_3b
    nop

    .line 6000
    const-string v5, "VendorKey is null or empty"

    invoke-static {v4, v5}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "VerificationParameters is null or empty"

    invoke-static {v3, v5}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tapjoy/internal/cw;

    invoke-direct {v5, v4, v6, v3}, Lcom/tapjoy/internal/cw;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 260
    goto :goto_59

    .line 258
    :cond_4f
    :goto_4f
    nop

    .line 5000
    invoke-static {v6, v7}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/tapjoy/internal/cw;

    invoke-direct {v3, v5, v6, v5}, Lcom/tapjoy/internal/cw;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 258
    move-object v5, v3

    .line 263
    :goto_59
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 247
    :catch_5d
    move-exception v3

    .line 248
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Malformed vendor JS URL. Skipping "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    goto :goto_73

    .line 233
    :catch_6c
    move-exception v3

    .line 234
    const-string v3, "Malformed vendor object. Skipping."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    nop

    .line 229
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 266
    :cond_76
    return-object v1
.end method

.method public static b(Lorg/json/JSONObject;)V
    .registers 6

    .line 270
    sget-object v0, Lcom/tapjoy/internal/er;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 271
    return-void

    .line 274
    :cond_9
    const/4 v0, 0x0

    const-string v1, "omJavaScriptURL"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 275
    const-string v0, "TJOMViewabilityAgent"

    if-nez p0, :cond_1a

    .line 276
    const-string p0, "Open Mediation JavaScript name not found in json."

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 281
    :cond_1a
    nop

    .line 6288
    :try_start_1b
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tapjoy/TapjoyCache;->getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_4f

    .line 6291
    const-string v2, ""

    if-nez v1, :cond_3c

    .line 6292
    :try_start_27
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 6293
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6294
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tapjoy/TapjoyCache;->getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v1

    .line 6297
    :cond_3c
    if-nez v1, :cond_3f

    .line 6298
    goto :goto_4c

    .line 6302
    :cond_3f
    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6304
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 281
    :goto_4c
    sput-object v2, Lcom/tapjoy/internal/er;->b:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4e} :catch_4f

    .line 284
    return-void

    .line 282
    :catch_4f
    move-exception p0

    .line 283
    const-string p0, "Failed downloading Open Mediation JavaScript"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cn;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/tapjoy/internal/er;->d:Lcom/tapjoy/internal/cn;

    return-object p0
.end method

.method static synthetic d(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cm;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/tapjoy/internal/er;->c:Lcom/tapjoy/internal/cm;

    return-object p0
.end method

.method static synthetic e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/tapjoy/internal/er;->f:Lcom/tapjoy/internal/cy;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Z
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 2525
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    .line 191
    const/4 v1, 0x0

    const-string v2, "TJOMViewabilityAgent"

    if-nez v0, :cond_f

    .line 192
    const-string p1, "Can not init -- WebView is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return v1

    .line 196
    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 3521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 196
    if-nez v0, :cond_1b

    .line 197
    const-string p1, "Can not init -- TJAdUnit is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return v1

    .line 201
    :cond_1b
    iget-object v0, p0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 4521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 201
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 202
    const-string p1, "Can not init -- VideoView is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return v1

    .line 206
    :cond_2b
    if-nez p1, :cond_33

    .line 207
    const-string p1, "Can not init -- json parameter is null"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v1

    .line 211
    :cond_33
    const-string v0, "omJavaScriptURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 212
    const-string p1, "Can not init -- unable to parse om javascript url from json"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return v1

    .line 217
    :cond_41
    :try_start_41
    const-string v0, "vendors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_46} :catch_49

    .line 221
    nop

    .line 223
    const/4 p1, 0x1

    return p1

    .line 218
    :catch_49
    move-exception p1

    .line 219
    const-string p1, "Can not init -- unable to parse vendors from json"

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v1
.end method
