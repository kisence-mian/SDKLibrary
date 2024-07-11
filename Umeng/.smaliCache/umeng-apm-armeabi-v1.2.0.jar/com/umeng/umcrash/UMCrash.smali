.class public Lcom/umeng/umcrash/UMCrash;
.super Ljava/lang/Object;
.source "UMCrash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/umcrash/UMCrash$CrashClientImpl;
    }
.end annotation


# static fields
.field public static final KEY_APM_DEFAULT_SECRET:Ljava/lang/String; = "NEej8y@anWa*8hep"

.field public static final KEY_APM_ROOT_NAME:Ljava/lang/String; = "UApm"

.field public static final KEY_CALLBACK_PAGE_ACTION:Ljava/lang/String; = "um_action_log"

.field public static final KEY_CALLBACK_UMID:Ljava/lang/String; = "um_umid"

.field private static final KEY_CALLBACK_USER_STRING:Ljava/lang/String; = "um_user_string"

.field public static final KEY_HEADER_APPKEY:Ljava/lang/String; = "um_app_key"

.field public static final KEY_HEADER_CARRIER:Ljava/lang/String; = "um_app_carrier"

.field public static final KEY_HEADER_CHANNEL:Ljava/lang/String; = "um_app_channel"

.field public static final KEY_HEADER_CRASH_VERSION:Ljava/lang/String; = "um_crash_sdk_version"

.field public static final KEY_HEADER_OS:Ljava/lang/String; = "um_os"

.field public static final KEY_HEADER_PROVIDER:Ljava/lang/String; = "um_app_provider"

.field public static final KEY_HEADER_PUID:Ljava/lang/String; = "um_app_puid"

.field public static final KEY_HEADER_START_TIME:Ljava/lang/String; = "um_app_start_time"

.field public static final KEY_HEADER_UMID:Ljava/lang/String; = "um_umid_header"

.field private static final KEY_MAX_LENGTH:I = 0x100

.field private static final TAG:Ljava/lang/String;

.field private static crashSdkVersion:Ljava/lang/String;

.field private static enableANRLog:Z

.field private static enableNativeLog:Z

.field private static enableUnexpLog:Z

.field private static isDebug:Z

.field private static isEncrypt:Z

.field private static isIntl:Z

.field private static isPA:Z

.field private static isZip:Z

.field private static mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

.field private static pageArrayLock:Ljava/lang/Object;

.field public static sReporter:Lcom/efs/sdk/base/EfsReporter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    const-class v0, Lcom/umeng/umcrash/UMCrash;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 38
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->isEncrypt:Z

    .line 39
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isZip:Z

    .line 40
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 41
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 42
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableUnexpLog:Z

    .line 43
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 74
    const-string v0, "1.2.0"

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->crashSdkVersion:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    .line 184
    sput-boolean v1, Lcom/umeng/umcrash/UMCrash;->isPA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 31
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 31
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Lcom/umeng/umcrash/UMCrashCallback;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    return-object v0
.end method

.method public static enableANRLog(Z)V
    .registers 1
    .param p0, "isA"    # Z

    .line 224
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    .line 225
    return-void
.end method

.method public static enableNativeLog(Z)V
    .registers 1
    .param p0, "isN"    # Z

    .line 220
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    .line 221
    return-void
.end method

.method public static enableUnexpLog(Z)V
    .registers 1
    .param p0, "isU"    # Z

    .line 228
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableUnexpLog:Z

    .line 229
    return-void
.end method

.method public static generateCustomLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "e"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 425
    const-string v0, "exception"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_b2

    .line 431
    :cond_10
    :try_start_10
    new-instance v1, Lcom/uc/crashsdk/export/CustomLogInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/uc/crashsdk/export/CustomLogInfo;-><init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 433
    .local v1, "info":Lcom/uc/crashsdk/export/CustomLogInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v2, "mCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "um_umid"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const-string v3, "um_action_log"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iput-object v2, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 438
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 439
    .local v3, "kvInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "k_ct"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v0, "k_ac"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_b0

    const-string v6, "\n"

    if-eqz v5, :cond_72

    :try_start_4d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 443
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_45

    .line 445
    :cond_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception message:\nBack traces starts.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Back traces ends."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "stack":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 451
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_9c
    iput-object v0, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    .line 456
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v5

    .line 457
    .local v5, "mCrashApi":Lcom/uc/crashsdk/export/CrashApi;
    if-nez v5, :cond_ac

    .line 458
    sget-object v6, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v7, "CrashApi is null, not init ."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 460
    :cond_ac
    invoke-virtual {v5, v1}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_af
    .catchall {:try_start_4d .. :try_end_af} :catchall_b0

    .line 463
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v1    # "info":Lcom/uc/crashsdk/export/CustomLogInfo;
    .end local v2    # "mCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "kvInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "stack":Ljava/lang/String;
    .end local v5    # "mCrashApi":Lcom/uc/crashsdk/export/CrashApi;
    :goto_af
    goto :goto_b1

    .line 462
    :catchall_b0
    move-exception v0

    .line 465
    :goto_b1
    return-void

    .line 426
    :cond_b2
    :goto_b2
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v1, "generate custom log failed ! e is null or type is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public static generateCustomLog(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "type"    # Ljava/lang/String;

    .line 400
    if-eqz p0, :cond_3b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3b

    .line 406
    :cond_9
    :try_start_9
    new-instance v0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    invoke-direct {v0, p1}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, p0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack(Ljava/lang/Throwable;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->build()Lcom/uc/crashsdk/export/CustomLogInfo;

    move-result-object v0

    .line 409
    .local v0, "customLogInfo":Lcom/uc/crashsdk/export/CustomLogInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "mCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "um_umid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    const-string v2, "um_action_log"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iput-object v1, v0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 413
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v2

    .line 414
    .local v2, "mCrashApi":Lcom/uc/crashsdk/export/CrashApi;
    if-nez v2, :cond_35

    .line 415
    sget-object v3, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v4, "CrashApi is null, not init ."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 417
    :cond_35
    invoke-virtual {v2, v0}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_39

    .line 420
    .end local v0    # "customLogInfo":Lcom/uc/crashsdk/export/CustomLogInfo;
    .end local v1    # "mCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "mCrashApi":Lcom/uc/crashsdk/export/CrashApi;
    :goto_38
    goto :goto_3a

    .line 419
    :catchall_39
    move-exception v0

    .line 422
    :goto_3a
    return-void

    .line 401
    :cond_3b
    :goto_3b
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v1, "generate custom log failed ! e is null or type is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public static getUMAPMFlag()Ljava/lang/String;
    .registers 5

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v1, "crash"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_39

    const-string v4, "crashNative"

    if-eqz v1, :cond_1b

    .line 192
    :try_start_17
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1e

    .line 194
    :cond_1b
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    :goto_1e
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_39

    const-string v4, "anr"

    if-eqz v1, :cond_28

    .line 197
    :try_start_24
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2b

    .line 199
    :cond_28
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    :goto_2b
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isPA:Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_39

    const-string v4, "pa"

    if-eqz v1, :cond_35

    .line 202
    :try_start_31
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_38

    .line 204
    :cond_35
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    .line 207
    :goto_38
    goto :goto_3a

    .line 206
    :catchall_39
    move-exception v1

    .line 208
    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getUMID(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/umeng/umcrash/UMCrash;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 154
    monitor-exit v0

    return-object v1

    .line 157
    :cond_8
    const/4 v2, 0x0

    .line 159
    .local v2, "umId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 161
    .local v3, "umConfigClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_a
    const-string v4, "com.umeng.commonsdk.UMConfigure"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_14
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    move-object v3, v4

    .line 163
    goto :goto_15

    .line 152
    .end local v2    # "umId":Ljava/lang/String;
    .end local v3    # "umConfigClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    goto :goto_3b

    .line 162
    .restart local v2    # "umId":Ljava/lang/String;
    .restart local v3    # "umConfigClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "context":Landroid/content/Context;
    :catch_14
    move-exception v4

    .line 164
    :goto_15
    if-eqz v3, :cond_41

    .line 165
    const/4 v4, 0x0

    .line 167
    .local v4, "umConfigMethed":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1a
    const-string v7, "getUMIDString"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_26} :catch_28
    .catchall {:try_start_1a .. :try_end_26} :catchall_12

    move-object v4, v7

    .line 169
    goto :goto_29

    .line 168
    :catch_28
    move-exception v7

    .line 170
    :goto_29
    if-eqz v4, :cond_41

    .line 172
    :try_start_2b
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_3a

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_39} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_39} :catch_3d
    .catchall {:try_start_2b .. :try_end_39} :catchall_12

    move-object v2, v5

    .line 178
    .end local v1    # "o":Ljava/lang/Object;
    :cond_3a
    :goto_3a
    goto :goto_41

    .line 152
    .end local v2    # "umId":Ljava/lang/String;
    .end local v3    # "umConfigClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "umConfigMethed":Ljava/lang/reflect/Method;
    .end local p0    # "context":Landroid/content/Context;
    :goto_3b
    monitor-exit v0

    throw p0

    .line 177
    .restart local v2    # "umId":Ljava/lang/String;
    .restart local v3    # "umConfigClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "umConfigMethed":Ljava/lang/reflect/Method;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_3d
    move-exception v1

    goto :goto_41

    .line 176
    :catch_3f
    move-exception v1

    goto :goto_3a

    .line 181
    .end local v4    # "umConfigMethed":Ljava/lang/reflect/Method;
    :cond_41
    :goto_41
    monitor-exit v0

    return-object v2
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .line 246
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "um_app_provider"

    const-string v5, ""

    const-string v6, "um_app_puid"

    const-string v7, "android"

    const-string v8, "um_os"

    const-string v9, "um_app_carrier"

    const-string v10, "um_app_channel"

    const-string v11, "um_umid_header"

    if-eqz v1, :cond_142

    if-nez v2, :cond_1c

    goto/16 :goto_142

    .line 251
    :cond_1c
    sput-object v1, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    .line 254
    :try_start_1e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    .line 255
    .local v13, "customInfo":Landroid/os/Bundle;
    const-string v0, "mDebug"

    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    const-string v0, "mEncryptLog"

    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isEncrypt:Z

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v0, "mZipLog"

    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isZip:Z

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string v0, "enableNativeLog"

    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    const-string v0, "enableANRLog"

    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string v0, "enableUnexpLog"

    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->enableUnexpLog:Z

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    const-string v0, "mIsInternational"

    sget-boolean v14, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    new-instance v14, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;-><init>(Lcom/umeng/umcrash/UMCrash$1;)V

    invoke-static {v1, v2, v0, v13, v14}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/uc/crashsdk/export/ICrashClient;)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    move-object v14, v0

    .line 263
    .local v14, "mCrashApi":Lcom/uc/crashsdk/export/CrashApi;
    if-eqz v14, :cond_c8

    .line 264
    const-string v0, "um_app_key"

    invoke-virtual {v14, v0, v2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v14, v10, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v14, v8, v7}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "um_crash_sdk_version"

    sget-object v15, Lcom/umeng/umcrash/UMCrash;->crashSdkVersion:Ljava/lang/String;

    invoke-virtual {v14, v0, v15}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v11, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_1e .. :try_end_7d} :catchall_d0

    .line 270
    :try_start_7d
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrashUtils;->getActiveUser(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "strings":[Ljava/lang/String;
    if-eqz v0, :cond_93

    array-length v15, v0

    const/4 v12, 0x2

    if-ne v15, v12, :cond_93

    .line 272
    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v14, v6, v12}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v12, 0x1

    aget-object v15, v0, v12

    invoke-virtual {v14, v4, v15}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_7d .. :try_end_93} :catchall_94

    .line 278
    .end local v0    # "strings":[Ljava/lang/String;
    :cond_93
    goto :goto_9b

    .line 275
    :catchall_94
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_95
    invoke-virtual {v14, v6, v5}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v14, v4, v5}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9b
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v9, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    instance-of v0, v1, Landroid/app/Application;

    if-eqz v0, :cond_c0

    .line 283
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    new-instance v4, Lcom/umeng/umcrash/UMCrash$1;

    invoke-direct {v4}, Lcom/umeng/umcrash/UMCrash$1;-><init>()V

    invoke-virtual {v0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 320
    const v0, 0x100011

    .line 321
    .local v0, "logType":I
    const-string v4, "um_umid"

    invoke-virtual {v14, v4, v0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    .line 322
    const-string v4, "um_action_log"

    invoke-virtual {v14, v4, v0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    .line 323
    nop

    .end local v0    # "logType":I
    goto :goto_cf

    .line 324
    :cond_c0
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v4, "context not instanceof application."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 327
    :cond_c8
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v4, "create CrashAPI is null."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_95 .. :try_end_cf} :catchall_d0

    .line 330
    .end local v13    # "customInfo":Landroid/os/Bundle;
    .end local v14    # "mCrashApi":Lcom/uc/crashsdk/export/CrashApi;
    :goto_cf
    goto :goto_d1

    .line 329
    :catchall_d0
    move-exception v0

    .line 333
    :goto_d1
    :try_start_d1
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 334
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static/range {p0 .. p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v4, Lcom/efs/sdk/base/EfsReporter$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "NEej8y@anWa*8hep"

    invoke-direct {v4, v5, v2, v6}, Lcom/efs/sdk/base/EfsReporter$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 339
    invoke-virtual {v4, v5}, Lcom/efs/sdk/base/EfsReporter$Builder;->debug(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object v4

    const-string v5, "UApm"

    .line 340
    invoke-virtual {v4, v5}, Lcom/efs/sdk/base/EfsReporter$Builder;->efsDirRootName(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 341
    invoke-virtual {v4, v5}, Lcom/efs/sdk/base/EfsReporter$Builder;->printLogDetail(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 342
    invoke-virtual {v4, v5}, Lcom/efs/sdk/base/EfsReporter$Builder;->intl(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object v4

    .line 343
    invoke-virtual {v4}, Lcom/efs/sdk/base/EfsReporter$Builder;->build()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v4

    sput-object v4, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 344
    invoke-virtual {v4, v0}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    .line 346
    new-instance v4, Lcom/efs/sdk/pa/PAFactory$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/umeng/umcrash/UMCrash$2;

    invoke-direct {v6}, Lcom/umeng/umcrash/UMCrash$2;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/efs/sdk/pa/PAFactory$Builder;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/IEfsReporter;)V

    .line 361
    .local v4, "builder":Lcom/efs/sdk/pa/PAFactory$Builder;
    sget-object v5, Lcom/efs/sdk/pa/config/PackageLevel;->RELEASE:Lcom/efs/sdk/pa/config/PackageLevel;

    invoke-virtual {v4, v5}, Lcom/efs/sdk/pa/PAFactory$Builder;->packageLevel(Lcom/efs/sdk/pa/config/PackageLevel;)Lcom/efs/sdk/pa/PAFactory$Builder;

    .line 366
    invoke-virtual {v4}, Lcom/efs/sdk/pa/PAFactory$Builder;->build()Lcom/efs/sdk/pa/PAFactory;

    move-result-object v5

    .line 367
    .local v5, "paFactory":Lcom/efs/sdk/pa/PAFactory;
    invoke-virtual {v5}, Lcom/efs/sdk/pa/PAFactory;->getPaInstance()Lcom/efs/sdk/pa/PA;

    move-result-object v6

    invoke-interface {v6}, Lcom/efs/sdk/pa/PA;->start()V

    .line 368
    invoke-virtual {v5}, Lcom/efs/sdk/pa/PAFactory;->getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/efs/sdk/pa/config/ConfigManager;->enableTracer()Z

    move-result v6

    sput-boolean v6, Lcom/umeng/umcrash/UMCrash;->isPA:Z
    :try_end_13f
    .catchall {:try_start_d1 .. :try_end_13f} :catchall_140

    .line 371
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "builder":Lcom/efs/sdk/pa/PAFactory$Builder;
    .end local v5    # "paFactory":Lcom/efs/sdk/pa/PAFactory;
    goto :goto_141

    .line 370
    :catchall_140
    move-exception v0

    .line 372
    :goto_141
    return-void

    .line 247
    :cond_142
    :goto_142
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v4, "context is null or appkey is null, init failed."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method public static registerUMCrashCallback(Lcom/umeng/umcrash/UMCrashCallback;)V
    .registers 4
    .param p0, "umCrashCallback"    # Lcom/umeng/umcrash/UMCrashCallback;

    .line 379
    if-eqz p0, :cond_1f

    .line 380
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    .line 381
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 382
    const v0, 0x100011

    .line 383
    .local v0, "logType":I
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v1

    const-string v2, "um_user_string"

    invoke-virtual {v1, v2, v0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    .line 384
    .end local v0    # "logType":I
    goto :goto_26

    .line 385
    :cond_17
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v1, "callback error, instance is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 388
    :cond_1f
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v1, "callback error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_26
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1
    .param p0, "isD"    # Z

    .line 216
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 217
    return-void
.end method

.method private static useIntlServices(Z)V
    .registers 4
    .param p0, "isInSer"    # Z

    .line 232
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 233
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    if-eqz v0, :cond_20

    .line 234
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useIntlServices is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_20
    return-void
.end method
