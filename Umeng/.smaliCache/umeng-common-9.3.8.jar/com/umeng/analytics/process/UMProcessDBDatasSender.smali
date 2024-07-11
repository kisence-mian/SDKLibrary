.class public Lcom/umeng/analytics/process/UMProcessDBDatasSender;
.super Ljava/lang/Object;
.source "UMProcessDBDatasSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;,
        Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;
    }
.end annotation


# static fields
.field public static final UM_PROCESS_CONSTRUCTMESSAGE:I = 0x9052

.field public static final UM_PROCESS_EVENT_KEY:I = 0x9051

.field private static executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneralBodyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

.field private mPolicySelector:Lcom/umeng/analytics/pro/n$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructMessage()V
    .registers 5

    .line 405
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->defconProcesserHandler()I

    move-result v0

    .line 406
    if-eqz v0, :cond_7

    .line 407
    return-void

    .line 410
    :cond_7
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;)V

    .line 411
    return-void
.end method

.method private defconProcesserHandler()I
    .registers 5

    .line 443
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v0

    .line 445
    if-eqz v0, :cond_29

    .line 449
    const/4 v1, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;

    invoke-direct {v3, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V

    invoke-static {v2, v3, v1}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c

    goto :goto_1d

    .line 453
    :catch_1c
    move-exception v2

    :goto_1d
    nop

    .line 456
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v2

    const-string v3, "_main_"

    invoke-virtual {v2, v3, v1, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 458
    :cond_29
    return v0
.end method

.method private generalBody()Lorg/json/JSONObject;
    .registers 8

    .line 291
    const-string v0, "userlevel"

    .line 295
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    if-nez v2, :cond_e

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    .line 299
    :cond_e
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readMainEvents(JLjava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_3a

    .line 306
    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 308
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_3a
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_72

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 317
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 318
    const-string v5, "provider"

    aget-object v2, v0, v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v2, "puid"

    aget-object v0, v0, v3

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_72

    const-string v0, "active_user"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    :cond_72
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 326
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 327
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v2, "group_info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_a0

    .line 339
    :cond_9f
    goto :goto_a1

    .line 338
    :catchall_a0
    move-exception v0

    .line 340
    :goto_a1
    return-object v1
.end method

.method private generalHeader()Lorg/json/JSONObject;
    .registers 9

    .line 209
    const-string v0, "$ud_da"

    const-string v1, "$pr_ve"

    const-string v2, "pr_ve"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 211
    :try_start_b
    sget-object v4, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v4, :cond_21

    sget-object v4, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 212
    const-string v4, "wrapper_version"

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v4, "wrapper_type"

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_21
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v4

    .line 217
    const-string v5, "vertical_type"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v4
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_118

    const/4 v5, 0x1

    const-string v6, "9.3.8"

    const-string v7, "sdk_version"

    if-ne v4, v5, :cond_4b

    .line 219
    :try_start_39
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 221
    goto :goto_47

    .line 220
    :cond_46
    move-object v6, v4

    .line 223
    :goto_47
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    goto :goto_4e

    .line 225
    :cond_4b
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :goto_4e
    nop

    .line 229
    nop

    .line 230
    nop

    .line 231
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_57
    .catchall {:try_start_39 .. :try_end_57} :catchall_118

    const-string v5, ""

    if-lez v4, :cond_7d

    .line 233
    :try_start_5b
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v4

    iget-object v6, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readVersionInfoFromColumId(Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v4

    .line 234
    if-eqz v4, :cond_7d

    .line 235
    const-string v5, "__av"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    const-string v6, "__vc"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7e

    .line 241
    :cond_7d
    move-object v4, v5

    :goto_7e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_82
    .catchall {:try_start_5b .. :try_end_82} :catchall_118

    const-string v7, "app_version"

    if-eqz v6, :cond_90

    .line 242
    :try_start_86
    iget-object v5, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_93

    .line 244
    :cond_90
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :goto_93
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_97
    .catchall {:try_start_86 .. :try_end_97} :catchall_118

    const-string v6, "version_code"

    if-eqz v5, :cond_a5

    .line 248
    :try_start_9b
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a8

    .line 250
    :cond_a5
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :goto_a8
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_bd

    .line 256
    const-string v5, "secret"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_bd
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    iget-object v6, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 264
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const-string v7, "ud_da"

    invoke-static {v2, v7, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v2, "pro_ver"

    const-string v5, "1.0.0"

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 273
    const-string v2, "vers_pre_version"

    const-string v4, "0"

    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "vers_date"

    invoke-interface {v6, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_117
    .catchall {:try_start_9b .. :try_end_117} :catchall_118

    .line 280
    :cond_117
    goto :goto_11c

    .line 278
    :catchall_118
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    :goto_11c
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBDatasSender;
    .registers 3

    .line 69
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    if-nez v0, :cond_17

    .line 70
    const-class v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    monitor-enter v0

    .line 71
    :try_start_7
    sget-object v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    if-nez v1, :cond_12

    .line 72
    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-direct {v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;-><init>()V

    sput-object v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    .line 74
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 77
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    iput-object p0, v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    .line 79
    return-object v0
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .registers 4

    .line 113
    if-eqz p1, :cond_3c

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3c

    .line 117
    :cond_d
    check-cast p1, Lorg/json/JSONObject;

    .line 118
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 121
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3b

    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 123
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteMainProcessEventDatasByIds(Ljava/util/List;)V

    .line 124
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 127
    :cond_3b
    return-void

    .line 114
    :cond_3c
    :goto_3c
    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .registers 9

    .line 146
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result p1

    .line 149
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->generalBody()Lorg/json/JSONObject;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_16

    .line 156
    return-object v1

    .line 160
    :cond_16
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->generalHeader()Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 164
    :try_start_1f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_95

    .line 165
    const/4 v4, 0x3

    const-string v5, "analytics"

    if-ne p1, v4, :cond_32

    .line 166
    :try_start_29
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3d

    .line 168
    :cond_32
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_3d

    .line 169
    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_4a

    .line 173
    const-string p1, "header"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_4a
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_94

    .line 177
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 178
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2
    :try_end_5e
    .catchall {:try_start_29 .. :try_end_5e} :catchall_95

    const/4 v0, 0x1

    const-string v4, "userlevel"

    const-string v5, "active_user"

    if-ne p2, v0, :cond_77

    .line 180
    :try_start_65
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_6c

    .line 181
    return-object v1

    .line 183
    :cond_6c
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_77

    .line 184
    return-object v1

    .line 187
    :cond_77
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8f

    .line 188
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_8f

    .line 189
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8f

    .line 190
    return-object v1

    .line 194
    :cond_8f
    const-string p1, "content"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_94
    .catchall {:try_start_65 .. :try_end_94} :catchall_95

    .line 200
    :cond_94
    goto :goto_96

    .line 199
    :catchall_95
    move-exception p1

    .line 205
    :goto_96
    return-object v2
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .registers 6

    .line 85
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 86
    return-void

    .line 88
    :cond_9
    packed-switch p2, :pswitch_data_28

    goto :goto_27

    .line 102
    :pswitch_d
    const-string p1, "MobclickRT"

    const-string p2, "--->>> recv UM_PROCESS_CONSTRUCTMESSAGE msg."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->constructMessage()V

    .line 104
    goto :goto_27

    .line 91
    :pswitch_18
    sget-object p1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;

    invoke-direct {p2, p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 100
    nop

    .line 108
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x9051
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method
