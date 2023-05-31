.class public Lcom/tencent/smtt/sdk/TbsLogReport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsLogReport$a;,
        Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;,
        Lcom/tencent/smtt/sdk/TbsLogReport$EventType;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/smtt/sdk/TbsLogReport;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TbsLogReportThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/tencent/smtt/sdk/aw;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tencent/smtt/sdk/aw;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()Lorg/json/JSONArray;
    .registers 5

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    :try_start_13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_12

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    if-le v2, v3, :cond_12

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_3b

    move-object v0, v1

    goto :goto_12

    :catch_3b
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_12
.end method

.method private a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .registers 10

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/am;->n(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :try_start_3a
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "ISO8859-1"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_183

    :goto_47
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v1, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_72
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->b(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->d(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->e(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->f(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->g(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->h(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->i(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->j(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->k(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->l(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->m(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->n(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->o(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "4.3.0.1020_43633"

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a()Lorg/json/JSONArray;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_19f

    const/4 v2, 0x4

    :goto_172
    if-lez v2, :cond_1a0

    :try_start_174
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_180} :catch_196

    :goto_180
    add-int/lit8 v2, v2, -0x1

    goto :goto_172

    :catch_183
    move-exception v0

    move-object v0, v1

    goto/16 :goto_47

    :cond_187
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_72

    :catch_196
    move-exception v5

    const-string v5, "upload"

    const-string v6, "JSONArray transform error!"

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_180

    :cond_19f
    move-object v0, v1

    :cond_1a0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tbs_download_upload"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    if-nez v0, :cond_1c1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_LOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget v0, v0, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->a:I

    if-eq p1, v0, :cond_1c4

    :cond_1c1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b()V

    :cond_1c4
    return-void
.end method

.method private a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    .registers 6

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-virtual {p0, p3, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport;ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method private b(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 5

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "upload"

    const-string v1, "[TbsLogReport.sendLogReportRequest] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void

    :cond_26
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloadStat.reportDownloadStat]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_41

    :cond_39
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloadStat.reportDownloadStat] no data"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_41
    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] jsonArray:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_55
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/v;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/tencent/smtt/sdk/ay;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/ay;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/smtt/utils/n;->a(Ljava/lang/String;[BLcom/tencent/smtt/utils/n$a;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " testcase: -1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_8d} :catch_8e

    goto :goto_25

    :catch_8e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25
.end method

.method static synthetic b(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->c()V

    return-void
.end method

.method private c()V
    .registers 3

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d()Landroid/content/SharedPreferences;
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v1, "tbs_download_stat"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;
    .registers 3

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/smtt/sdk/TbsLogReport;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/TbsLogReport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public dailyReport()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .registers 7

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x258

    iput v2, v1, Landroid/os/Message;->what:I

    iget v2, p1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->a:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string v1, "upload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsLogReport.eventReport] error, message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public getShouldUploadEventReport()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    return v0
.end method

.method public reportTbsLog()V
    .registers 12

    const/4 v10, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "upload"

    const-string v1, "[TbsLogReport.reportTbsLog] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->getTbsLogFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-static {}, Lcom/tencent/smtt/utils/o;->a()Lcom/tencent/smtt/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/o;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_53
    invoke-static {}, Lcom/tencent/smtt/utils/o;->a()Lcom/tencent/smtt/utils/o;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/smtt/utils/o;->a([B)[B

    move-result-object v1

    invoke-static {}, Lcom/tencent/smtt/utils/o;->a()Lcom/tencent/smtt/utils/o;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/smtt/utils/o;->a([B)[B
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_62} :catch_176

    move-result-object v0

    :goto_63
    invoke-static {v1}, Lcom/tencent/smtt/utils/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/smtt/utils/o;->b([B)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/v;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/utils/v;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&aid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Charset"

    const-string v1, "UTF-8"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "QUA2"

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_ae
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/tbslog_temp.zip"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a()V

    new-instance v3, Ljava/io/File;

    sget-object v0, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    const-string v1, "tbslog_temp.zip"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_db} :catch_16a
    .catchall {:try_start_ae .. :try_end_db} :catchall_143

    :try_start_db
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e0} :catch_16f
    .catchall {:try_start_db .. :try_end_e0} :catchall_162

    const/16 v0, 0x2000

    :try_start_e2
    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_173
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_165

    :goto_e9
    :try_start_e9
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_12a

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f4} :catch_f5
    .catchall {:try_start_e9 .. :try_end_f4} :catchall_167

    goto :goto_e9

    :catch_f5
    move-exception v0

    :goto_f6
    :try_start_f6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_167

    if-eqz v4, :cond_fe

    :try_start_fb
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_15a

    :cond_fe
    :goto_fe
    if-eqz v1, :cond_103

    :try_start_100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_15c

    :cond_103
    :goto_103
    if-eqz v3, :cond_179

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v0, v2

    :goto_109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/smtt/sdk/ax;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/ax;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    invoke-static {v1, v7, v0, v2, v10}, Lcom/tencent/smtt/utils/n;->a(Ljava/lang/String;Ljava/util/Map;[BLcom/tencent/smtt/utils/n$a;Z)Ljava/lang/String;

    goto/16 :goto_27

    :cond_12a
    :try_start_12a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-static {}, Lcom/tencent/smtt/utils/o;->a()Lcom/tencent/smtt/utils/o;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/utils/o;->a([B)[B
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_138} :catch_f5
    .catchall {:try_start_12a .. :try_end_138} :catchall_167

    move-result-object v0

    :try_start_139
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_156

    :goto_13c
    :try_start_13c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_13f} :catch_158

    :goto_13f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_109

    :catchall_143
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_146
    if-eqz v4, :cond_14b

    :try_start_148
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14b} :catch_15e

    :cond_14b
    :goto_14b
    if-eqz v2, :cond_150

    :try_start_14d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_150} :catch_160

    :cond_150
    :goto_150
    if-eqz v3, :cond_155

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_155
    throw v0

    :catch_156
    move-exception v2

    goto :goto_13c

    :catch_158
    move-exception v1

    goto :goto_13f

    :catch_15a
    move-exception v0

    goto :goto_fe

    :catch_15c
    move-exception v0

    goto :goto_103

    :catch_15e
    move-exception v1

    goto :goto_14b

    :catch_160
    move-exception v1

    goto :goto_150

    :catchall_162
    move-exception v0

    move-object v4, v2

    goto :goto_146

    :catchall_165
    move-exception v0

    goto :goto_146

    :catchall_167
    move-exception v0

    move-object v2, v1

    goto :goto_146

    :catch_16a
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_f6

    :catch_16f
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    goto :goto_f6

    :catch_173
    move-exception v0

    move-object v1, v2

    goto :goto_f6

    :catch_176
    move-exception v4

    goto/16 :goto_63

    :cond_179
    move-object v0, v2

    goto :goto_109
.end method

.method public setInstallErrorCode(ILjava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    .registers 7

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_21

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_21

    const/16 v0, 0xdd

    if-eq p1, v0, :cond_21

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error occured in installation, errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_21
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setInstallErrorCode(ILjava/lang/Throwable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setLoadErrorCode(ILjava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_LOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method public setLoadErrorCode(ILjava/lang/Throwable;)V
    .registers 6

    const/16 v2, 0x400

    const-string v0, "NULL"

    if-eqz p2, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_40

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_40
    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    return-void
.end method

.method public setShouldUploadEventReport(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    return-void
.end method

.method public tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;
    .registers 3

    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;-><init>(Lcom/tencent/smtt/sdk/aw;)V

    return-object v0
.end method
