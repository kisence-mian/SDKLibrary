.class public Lcom/sigmob/sdk/base/common/SDKConfig;
.super Ljava/lang/Object;


# static fields
.field public static final SDK_CONFIG_VER:Ljava/lang/String; = "sdkConfigVer"

.field private static a:Lcom/sigmob/sdk/base/common/SDKConfig;


# instance fields
.field private b:Z

.field private c:J

.field private d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/String;

.field private h:Ljava/util/logging/FileHandler;

.field private i:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;


# direct methods
.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->c:J

    iput-object v2, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2.17.1|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "1"

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->h:Ljava/util/logging/FileHandler;

    iput-object v2, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->i:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/base/common/SDKConfig$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/SDKConfig$1;-><init>(Lcom/sigmob/sdk/base/common/SDKConfig;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->f:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->b:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->a()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->b()V

    return-void

    :cond_49
    const-string v0, "0"

    goto :goto_1f
.end method

.method private a()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->i:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    if-nez v0, :cond_fd

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;-><init>()V

    new-instance v2, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;-><init>()V

    new-instance v3, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig$Builder;

    invoke-direct {v3}, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig$Builder;-><init>()V

    sget-object v4, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_fe

    const-string v4, "https://dctest.sigmob.cn/log"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;->log(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adstage.sigmob.cn/ad/v3"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;->ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adstage.sigmob.cn/strategy/v3"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;->strategy(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;

    :goto_31
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->finished(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    const/16 v4, 0x270f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->showClose(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->ifMute(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadTimeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    const/16 v4, 0x1c20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadExpired(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endpoints(Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints(Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv(Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    sget-object v2, Lcom/sigmob/sdk/base/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadExpired(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    new-instance v1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "load"

    aput-object v3, v2, v6

    const-string v3, "start"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "click"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->events:Ljava/util/List;

    new-instance v2, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;-><init>()V

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->count:Ljava/lang/Integer;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->queue_max:Ljava/lang/Integer;

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->interval:Ljava/lang/Integer;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config(Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log(Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    :cond_f7
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->i:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    :cond_fd
    return-void

    :cond_fe
    const-string v4, "https://dc.sigmob.cn/log"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;->log(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adservice.sigmob.cn/ad/v3"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;->ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adservice.sigmob.cn/strategy/v3"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;->strategy(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig$Builder;

    goto/16 :goto_31
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/SDKConfig;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->c()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/SDKConfig;Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/SDKConfig;->b(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V
    .registers 6

    if-eqz p1, :cond_5c

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/config"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :try_start_2f
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_62
    .catchall {:try_start_2f .. :try_end_39} :catchall_72

    :try_start_39
    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->encode(Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/aa;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "sdkConfigVer"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->g:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_57} :catch_81
    .catchall {:try_start_39 .. :try_end_57} :catchall_7f

    if-eqz v1, :cond_5c

    :try_start_59
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    return-void

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catch_62
    move-exception v0

    move-object v1, v2

    :goto_64
    :try_start_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_7f

    if-eqz v1, :cond_5c

    :try_start_69
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_5c

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catchall_72
    move-exception v0

    move-object v1, v2

    :goto_74
    if-eqz v1, :cond_79

    :try_start_76
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    :cond_79
    :goto_79
    throw v0

    :catch_7a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    :catchall_7f
    move-exception v0

    goto :goto_74

    :catch_81
    move-exception v0

    goto :goto_64
.end method

.method private b()V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/aa;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sdkConfigVer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/config"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_44
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4e} :catch_69
    .catchall {:try_start_44 .. :try_end_4e} :catchall_79

    :try_start_4e
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    if-eqz v0, :cond_5e

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    if-eqz v2, :cond_5e

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_5e} :catch_88
    .catchall {:try_start_4e .. :try_end_5e} :catchall_86

    :cond_5e
    if-eqz v1, :cond_7

    :try_start_60
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_7

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_69
    move-exception v0

    move-object v1, v2

    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_86

    if-eqz v1, :cond_7

    :try_start_70
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_7

    :catch_74
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catchall_79
    move-exception v0

    move-object v1, v2

    :goto_7b
    if-eqz v1, :cond_80

    :try_start_7d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_80} :catch_81

    :cond_80
    :goto_80
    throw v0

    :catch_81
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_80

    :catchall_86
    move-exception v0

    goto :goto_7b

    :catch_88
    move-exception v0

    goto :goto_6b
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/SDKConfig;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->e()V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->M()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->D()V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/SDKConfig;->a(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->c:J

    return-void
.end method

.method private c()V
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->e()V

    goto :goto_6

    :cond_20
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->d()V

    goto :goto_6
.end method

.method private d()V
    .registers 5

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v1

    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/v;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "sdk config fail, network no connection"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string v2, "sdk config server check"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    new-instance v0, Lcom/sigmob/sdk/base/c/q;

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/common/SDKConfig$2;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/common/SDKConfig$2;-><init>(Lcom/sigmob/sdk/base/common/SDKConfig;)V

    invoke-direct {v0, v2, v3}, Lcom/sigmob/sdk/base/c/q;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/c/r;)V

    if-nez v1, :cond_3c

    const-string v0, "queue is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->e()V

    goto :goto_1c

    :cond_3c
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    const-string v0, "update sdk config"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private e()V
    .registers 7

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->f()V

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->b:Z

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x7530

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->f:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->c:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https://adstage.sigmob.cn/config"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "https://adservice.sigmob.cn/config"

    goto :goto_a
.end method

.method public static sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/SDKConfig;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

    if-nez v0, :cond_13

    const-class v1, Lcom/sigmob/sdk/base/common/SDKConfig;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/SDKConfig;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/sdk/base/common/SDKConfig;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/SDKConfig;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/sigmob/sdk/base/common/SDKConfig;->a:Lcom/sigmob/sdk/base/common/SDKConfig;

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
.method public enableAntiFraud()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public enableExitOnVideoClose()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public enableReport_log()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public filterAntiEvent(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getADTrackerExpiredTime()J
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xb4

    cmp-long v2, v0, v2

    if-gez v2, :cond_14

    const-wide/32 v0, 0x15180

    :cond_14
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getAdTrackerMaxRetryNum()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public getAdTrackerRetryInterval()I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_10

    const/16 v0, 0xb4

    :cond_10
    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getAdsUrl()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->ads:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "https://adstage.sigmob.cn/ad/v3"

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const-string v0, "https://adservice.sigmob.cn/ad/v3"

    goto :goto_18
.end method

.method public getCacheTop()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCloseDialogSetting()Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getRvConfig()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getRvConfig()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getClosePosition()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFinished()F
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLoadExpired()J
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_15

    const-wide/16 v0, 0x1c20

    :cond_15
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getLoadPeriodTime()J
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_14

    :cond_11
    const-wide/16 v0, 0x0

    :goto_13
    return-wide v0

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_13
.end method

.method public getLogUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->log:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "https://dctest.sigmob.cn/log"

    :goto_18
    return-object v0

    :cond_19
    const-string v0, "https://dc.sigmob.cn/log"

    goto :goto_18

    :cond_1c
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->log:Ljava/lang/String;

    goto :goto_18
.end method

.method public getMaxSendLogRecords()I
    .registers 3

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public getMotionCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getMotionInterval()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getMotionQueueMax()I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->queue_max:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x32

    :goto_44
    return v0

    :cond_45
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->queue_max:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_44

    :cond_54
    const/4 v0, 0x0

    goto :goto_44
.end method

.method public getRvConfig()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    return-object v0
.end method

.method public getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->i:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->i:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    goto :goto_a
.end method

.method public getSendLogInterval()I
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public getShowClose()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSkipPosition()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSkipSeconds()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSoundPostion()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSplashCacheTop()I
    .registers 4

    const/16 v0, 0x32

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a
.end method

.method public getSplashExpiredTime()J
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    :cond_11
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1d

    :cond_19
    const-wide/32 v0, 0xa4cb800

    :goto_1c
    return-wide v0

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1c

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_1c
.end method

.method public getSplashShowDuration()I
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_17
.end method

.method public getStrategyUrl()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->strategy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "https://adstage.sigmob.cn/strategy/v3"

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const-string v0, "https://adservice.sigmob.cn/strategy/v3"

    goto :goto_18
.end method

.method public ifMute()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method public isDisableUpAppInfo()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public is_gdpr_region()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->d:Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public loadAdTimeout()J
    .registers 3

    const/16 v0, 0x2d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_14

    :goto_10
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :cond_14
    move v0, v1

    goto :goto_10
.end method

.method public startUpdate()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/SDKConfig;->f()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/SDKConfig;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
