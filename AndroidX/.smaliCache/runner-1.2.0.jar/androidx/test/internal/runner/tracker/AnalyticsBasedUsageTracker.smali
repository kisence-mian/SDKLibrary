.class public final Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;
.super Ljava/lang/Object;
.source "AnalyticsBasedUsageTracker.java"

# interfaces
.implements Landroidx/test/internal/runner/tracker/UsageTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    }
.end annotation


# static fields
.field private static final API_LEVEL_PARAM:Ljava/lang/String; = "&cd2="

.field private static final APP_NAME_PARAM:Ljava/lang/String; = "an="

.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "&av="

.field private static final CLIENT_ID_PARAM:Ljava/lang/String; = "&cid="

.field private static final MODEL_NAME_PARAM:Ljava/lang/String; = "&cd3="

.field private static final SCREEN_NAME_PARAM:Ljava/lang/String; = "&cd="

.field private static final SCREEN_RESOLUTION_PARAM:Ljava/lang/String; = "&sr="

.field private static final TAG:Ljava/lang/String; = "InfraTrack"

.field private static final TRACKER_ID_PARAM:Ljava/lang/String; = "&tid="

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final analyticsURI:Ljava/net/URL;

.field private final apiLevel:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final screenResolution:Ljava/lang/String;

.field private final targetPackage:Ljava/lang/String;

.field private final trackingId:Ljava/lang/String;

.field private final usageTypeToVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    .line 67
    # getter for: Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->trackingId:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$000(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->trackingId:Ljava/lang/String;

    .line 68
    # getter for: Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$100(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->targetPackage:Ljava/lang/String;

    .line 69
    # getter for: Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsURI:Ljava/net/URL;
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$200(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->analyticsURI:Ljava/net/URL;

    .line 70
    # getter for: Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->apiLevel:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$300(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->apiLevel:Ljava/lang/String;

    .line 71
    # getter for: Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->model:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$400(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->model:Ljava/lang/String;

    .line 72
    # getter for: Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$500(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->screenResolution:Ljava/lang/String;

    .line 73
    # getter for: Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->access$600(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->userId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$1;)V
    .registers 3
    .param p1, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .param p2, "x1"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$1;

    .line 43
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;-><init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)V

    return-void
.end method


# virtual methods
.method public sendUsages()V
    .registers 14

    .line 223
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 228
    .local v1, "myUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 229
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c3

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "baseBody":Ljava/lang/String;
    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "an="

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->targetPackage:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 236
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&tid="

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->trackingId:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 238
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&v=1"

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&z="

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&cid="

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->userId:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 243
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sr="

    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->screenResolution:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 245
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&cd2="

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->apiLevel:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 247
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&cd3="

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->model:Ljava/lang/String;

    const-string v4, "UTF-8"

    .line 249
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&t=appview"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sc=start"

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_b0} :catch_b2

    move-object v0, v2

    .line 255
    goto :goto_ba

    .line 253
    :catch_b2
    move-exception v2

    .line 254
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "InfraTrack"

    const-string v4, "Impossible error happened. analytics disabled."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_ba
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 258
    .local v3, "usage":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 260
    .local v4, "analyticsConnection":Ljava/net/HttpURLConnection;
    :try_start_cf
    iget-object v5, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->analyticsURI:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v4, v5

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&cd="

    .line 265
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&av="

    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 273
    .local v5, "body":[B
    const/16 v6, 0xbb8

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 274
    const/16 v6, 0x1388

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 275
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 276
    array-length v6, v5

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 277
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 278
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 279
    .local v6, "status":I
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-eq v7, v8, :cond_182

    .line 280
    const-string v7, "InfraTrack"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 287
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x2d

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Analytics post: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " failed. code: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 280
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_182} :catch_187
    .catchall {:try_start_cf .. :try_end_182} :catchall_185

    .line 292
    .end local v5    # "body":[B
    .end local v6    # "status":I
    :cond_182
    if-eqz v4, :cond_1ba

    .line 293
    goto :goto_1b7

    .line 292
    :catchall_185
    move-exception v2

    goto :goto_1bc

    .line 289
    :catch_187
    move-exception v5

    .line 290
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_188
    const-string v6, "InfraTrack"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Analytics post: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b4
    .catchall {:try_start_188 .. :try_end_1b4} :catchall_185

    .line 292
    nop

    .end local v5    # "ioe":Ljava/io/IOException;
    if-eqz v4, :cond_1ba

    .line 293
    :goto_1b7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 296
    .end local v3    # "usage":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "analyticsConnection":Ljava/net/HttpURLConnection;
    :cond_1ba
    goto/16 :goto_c2

    .line 292
    .restart local v3    # "usage":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "analyticsConnection":Ljava/net/HttpURLConnection;
    :goto_1bc
    if-eqz v4, :cond_1c1

    .line 293
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1c1
    throw v2

    .line 297
    .end local v3    # "usage":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "analyticsConnection":Ljava/net/HttpURLConnection;
    :cond_1c2
    return-void

    .line 229
    .end local v0    # "baseBody":Ljava/lang/String;
    .end local v1    # "myUsages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1c3
    move-exception v1

    :try_start_1c4
    monitor-exit v0
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c3

    goto :goto_1c7

    :goto_1c6
    throw v1

    :goto_1c7
    goto :goto_1c6
.end method

.method public trackUsage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "usageType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usageType",
            "version"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;->usageTypeToVersion:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
