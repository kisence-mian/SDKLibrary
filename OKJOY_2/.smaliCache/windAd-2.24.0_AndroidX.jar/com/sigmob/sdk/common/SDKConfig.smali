.class public Lcom/sigmob/sdk/common/SDKConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/SDKConfig$a;
    }
.end annotation


# static fields
.field private static a:Lcom/sigmob/sdk/common/SDKConfig;

.field private static b:Z


# instance fields
.field private c:Z

.field private d:J

.field private e:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/String;

.field private i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

.field private j:Lcom/sigmob/sdk/common/SDKConfig$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sigmob/sdk/common/SDKConfig;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->e:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2.24.0|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "1"

    goto :goto_22

    :cond_20
    const-string v2, "0"

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/common/SDKConfig;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/common/SDKConfig$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/common/SDKConfig$1;-><init>(Lcom/sigmob/sdk/common/SDKConfig;)V

    iput-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->g:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->c:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->a()V

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->b()V

    return-void
.end method

.method private a()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    if-nez v0, :cond_120

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;-><init>()V

    new-instance v2, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;

    invoke-direct {v2}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;-><init>()V

    new-instance v3, Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig$Builder;

    invoke-direct {v3}, Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig$Builder;-><init>()V

    sget-object v4, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "https://dctest.sigmob.cn/log"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->log(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adstage.sigmob.cn/ad/v3"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->ads(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adstage.sigmob.cn/strategy/v3"

    goto :goto_39

    :cond_2d
    const-string v4, "https://dc.sigmob.cn/log"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->log(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adservice.sigmob.cn/ad/v3"

    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->ads(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;

    const-string v4, "https://adservice.sigmob.cn/strategy/v3"

    :goto_39
    invoke-virtual {v2, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->strategy(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->finished(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    const/16 v4, 0x270f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->showClose(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->ifMute(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    const/16 v5, 0x2d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadTimeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    const/16 v5, 0x1c20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadExpired(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->endpoints(Lcom/sigmob/sdk/common/models/ssp/pb/RvEndpointsConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints(Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv(Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_location(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_permission(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_report_crash(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    sget-object v3, Lcom/sigmob/sdk/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;->loadExpired(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig$Builder;

    new-instance v1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;-><init>()V

    const-string v2, "load"

    const-string v3, "start"

    const-string v4, "click"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->events:Ljava/util/List;

    new-instance v2, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig$Builder;

    invoke-direct {v2}, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig$Builder;-><init>()V

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig$Builder;->count:Ljava/lang/Integer;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig$Builder;->queue_max:Ljava/lang/Integer;

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig$Builder;->interval:Ljava/lang/Integer;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config(Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log(Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    :cond_11a
    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    :cond_120
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/SDKConfig;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->c()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/SDKConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/SDKConfig;->a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V
    .registers 4

    if-eqz p1, :cond_24

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    if-eqz v0, :cond_24

    iput-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig;->e:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/sigmob/sdk/common/SDKConfig;->b:Z

    iget-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig;->e:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->d:J

    iget-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig;->j:Lcom/sigmob/sdk/common/SDKConfig$a;

    if-eqz p1, :cond_24

    invoke-interface {p1}, Lcom/sigmob/sdk/common/SDKConfig$a;->onUpdate()V

    :cond_24
    return-void
.end method

.method private b()V
    .registers 6

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/SDKConfig;->a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sdkConfigVer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/common/SDKConfig;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_91

    :try_start_49
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_65

    :try_start_53
    sget-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/common/SDKConfig;->a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_62

    :try_start_5e
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_78

    goto :goto_96

    :catchall_62
    move-exception v1

    move-object v2, v0

    goto :goto_66

    :catchall_65
    move-exception v1

    :goto_66
    :try_start_66
    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/SDKConfig;->a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_81

    if-eqz v2, :cond_96

    :try_start_74
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_96

    :catchall_78
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_96

    :catchall_81
    move-exception v0

    if-eqz v2, :cond_90

    :try_start_84
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_90

    :catchall_88
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_90
    :goto_90
    throw v0

    :cond_91
    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/SDKConfig;->a(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    :cond_96
    :goto_96
    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/common/SDKConfig;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->e()V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/common/SDKConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/SDKConfig;->b(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V
    .registers 6

    if-eqz p1, :cond_89

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_28
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :try_start_2f
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_63
    .catchall {:try_start_2f .. :try_end_39} :catchall_61

    :try_start_39
    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->encode(Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sdkConfigVer"

    iget-object v1, p0, Lcom/sigmob/sdk/common/SDKConfig;->h:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_57} :catch_5e
    .catchall {:try_start_39 .. :try_end_57} :catchall_5b

    :try_start_57
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_71

    goto :goto_89

    :catchall_5b
    move-exception p1

    move-object v0, v2

    goto :goto_7a

    :catch_5e
    move-exception p1

    move-object v0, v2

    goto :goto_64

    :catchall_61
    move-exception p1

    goto :goto_7a

    :catch_63
    move-exception p1

    :goto_64
    :try_start_64
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_61

    if-eqz v0, :cond_89

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_89

    :catch_71
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_89

    :goto_7a
    if-eqz v0, :cond_88

    :try_start_7c
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_88

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_88
    :goto_88
    throw p1

    :cond_89
    :goto_89
    return-void
.end method

.method private c()V
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/sigmob/sdk/common/a;->b()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1c

    :cond_18
    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->d()V

    return-void

    :cond_1c
    :goto_1c
    const-string v0, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->e()V

    return-void
.end method

.method private d()V
    .registers 5

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/common/e/j;

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/common/SDKConfig$2;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/common/SDKConfig$2;-><init>(Lcom/sigmob/sdk/common/SDKConfig;)V

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/common/e/j;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/e/j$a;)V

    if-nez v0, :cond_1d

    const-string v0, "queue is null"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->e()V

    return-void

    :cond_1d
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/e/l;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    const-string v0, "update sdk config"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .registers 7

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->f()V

    iget-boolean v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->c:Z

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x7530

    iget-object v2, p0, Lcom/sigmob/sdk/common/SDKConfig;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sigmob/sdk/common/SDKConfig;->g:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/sigmob/sdk/common/SDKConfig;->d:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/common/SDKConfig;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https://adstage.sigmob.cn/config"

    return-object v0

    :cond_b
    const-string v0, "https://adservice.sigmob.cn/config"

    return-object v0
.end method

.method public static getGDPRRegionURL()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "http://adstage.sigmob.cn/extconfig"

    return-object v0

    :cond_b
    const-string v0, "http://adservice.sigmob.cn/extconfig"

    return-object v0
.end method

.method public static getRequireAdapterVersion(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b0

    goto/16 :goto_a7

    :sswitch_11
    const-string v0, "applovin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/16 p0, 0x8

    goto/16 :goto_a8

    :sswitch_1d
    const-string v0, "kuaishou"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x3

    goto/16 :goto_a8

    :sswitch_28
    const-string v0, "mintegral"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/16 p0, 0xa

    goto/16 :goto_a8

    :sswitch_34
    const-string v0, "facebookaudiencenetwork"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x5

    goto/16 :goto_a8

    :sswitch_3f
    const-string v0, "admob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x4

    goto :goto_a8

    :sswitch_49
    const-string v0, "gdt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x1

    goto :goto_a8

    :sswitch_53
    const-string v0, "unityads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/16 p0, 0x9

    goto :goto_a8

    :sswitch_5e
    const-string v0, "mobvista"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/16 p0, 0xb

    goto :goto_a8

    :sswitch_69
    const-string v0, "vungle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x6

    goto :goto_a8

    :sswitch_73
    const-string v0, "tapjoy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/16 p0, 0xd

    goto :goto_a8

    :sswitch_7e
    const-string v0, "sigmob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x0

    goto :goto_a8

    :sswitch_88
    const-string v0, "ironsource"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x7

    goto :goto_a8

    :sswitch_92
    const-string v0, "oneway"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/16 p0, 0xc

    goto :goto_a8

    :sswitch_9d
    const-string v0, "toutiao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x2

    goto :goto_a8

    :cond_a7
    :goto_a7
    move p0, v1

    :goto_a8
    const/16 v0, 0x8b6

    packed-switch p0, :pswitch_data_ea

    goto :goto_af

    :pswitch_ae
    move v1, v0

    :goto_af
    return v1

    :sswitch_data_b0
    .sparse-switch
        -0x439c2a43 -> :sswitch_9d
        -0x3c584537 -> :sswitch_92
        -0x3746d91d -> :sswitch_88
        -0x35ca9371 -> :sswitch_7e
        -0x34826aaf -> :sswitch_73
        -0x2fffd7cf -> :sswitch_69
        -0x2760f873 -> :sswitch_5e
        -0x11610ee5 -> :sswitch_53
        0x18f37 -> :sswitch_49
        0x58603fd -> :sswitch_3f
        0x120ca424 -> :sswitch_34
        0x431e1919 -> :sswitch_28
        0x43da690d -> :sswitch_1d
        0x4650da37 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
    .end packed-switch
.end method

.method public static isGDPRRegion()Z
    .registers 1

    sget-boolean v0, Lcom/sigmob/sdk/common/SDKConfig;->b:Z

    return v0
.end method

.method public static sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/SDKConfig;->a:Lcom/sigmob/sdk/common/SDKConfig;

    if-nez v0, :cond_17

    const-class v0, Lcom/sigmob/sdk/common/SDKConfig;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/common/SDKConfig;->a:Lcom/sigmob/sdk/common/SDKConfig;

    if-nez v1, :cond_12

    new-instance v1, Lcom/sigmob/sdk/common/SDKConfig;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/SDKConfig;-><init>()V

    sput-object v1, Lcom/sigmob/sdk/common/SDKConfig;->a:Lcom/sigmob/sdk/common/SDKConfig;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/sigmob/sdk/common/SDKConfig;->a:Lcom/sigmob/sdk/common/SDKConfig;

    return-object v0
.end method


# virtual methods
.method public enableAntiFraud()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public enableExitOnVideoClose()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public getADTrackerExpiredTime()J
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->ads:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "https://adstage.sigmob.cn/ad/v3"

    return-object v0

    :cond_19
    const-string v0, "https://adservice.sigmob.cn/ad/v3"

    :cond_1b
    return-object v0
.end method

.method public getApk_expired_time()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoLoadInterval()I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_11

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method public getCacheTop()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCloseDialogSetting()Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getRvConfig()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getRvConfig()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClosePosition()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDisable_up_OAid()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getFinished()F
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLoadExpired()J
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_12

    goto :goto_1a

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :cond_1a
    :goto_1a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLogUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->log:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "https://dctest.sigmob.cn/log"

    return-object v0

    :cond_19
    const-string v0, "https://dc.sigmob.cn/log"

    return-object v0

    :cond_1c
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->log:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSendLogRecords()I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public getMotionCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getMotionInterval()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getMotionQueueMax()I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->queue_max:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_45

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x32

    return v0

    :cond_45
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->motion_config:Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/MotionConfig;->queue_max:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_54
    const/4 v0, 0x0

    return v0
.end method

.method public getRvConfig()Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    return-object v0
.end method

.method public getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->e:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->i:Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    :cond_11
    return-object v0
.end method

.method public getSendLogInterval()I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    move v0, v1

    :cond_e
    return v0
.end method

.method public getShowClose()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSkipPosition()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSkipSeconds()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSoundPostion()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSplashCacheTop()I
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    const/16 v1, 0x32

    if-nez v0, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_21

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public getSplashExpiredTime()J
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_31

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v1, :cond_27

    int-to-long v0, v0

    return-wide v0

    :cond_27
    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    :cond_31
    :goto_31
    const-wide/32 v0, 0xa4cb800

    return-wide v0
.end method

.method public getSplashShowDuration()I
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    const/4 v1, 0x3

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_18

    goto :goto_25

    :cond_18
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public getStrategyUrl()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->strategy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "https://adstage.sigmob.cn/strategy/v3"

    return-object v0

    :cond_19
    const-string v0, "https://adservice.sigmob.cn/strategy/v3"

    :cond_1b
    return-object v0
.end method

.method public getlogBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    return-object v0
.end method

.method public ifMute()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isDisableUpAppInfo()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public isDisable_up_location()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public isEnable_permission()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public isEnable_report_crash()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public loadAdTimeout()J
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/SDKConfig;->getSdkConfig()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2d

    if-ge v0, v1, :cond_11

    move v0, v1

    :cond_11
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public setOnSDKUpdateListener(Lcom/sigmob/sdk/common/SDKConfig$a;)Lcom/sigmob/sdk/common/SDKConfig;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig;->j:Lcom/sigmob/sdk/common/SDKConfig$a;

    sget-object p1, Lcom/sigmob/sdk/common/SDKConfig;->a:Lcom/sigmob/sdk/common/SDKConfig;

    return-object p1
.end method

.method public startUpdate()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/common/SDKConfig;->f()V

    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/common/SDKConfig;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
