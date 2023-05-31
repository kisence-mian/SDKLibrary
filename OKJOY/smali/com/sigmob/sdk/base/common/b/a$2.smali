.class Lcom/sigmob/sdk/base/common/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic g:Lcom/sigmob/sdk/base/common/b/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 8

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/b/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/b/a$2;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/b/a$2;->d:Ljava/lang/String;

    iput p6, p0, Lcom/sigmob/sdk/base/common/b/a$2;->e:I

    iput-object p7, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/common/b/a;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_e
    const-string v1, "401"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/b/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b()Z

    move-result v1

    if-nez v1, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gdpr consent status is deceit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b/a$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_42} :catch_474
    .catchall {:try_start_e .. :try_end_42} :catchall_487

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/common/b/a;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_4f
    return-void

    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b/a$2;->c:Ljava/util/Map;

    if-eqz v1, :cond_76

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/PointEntity;->fromMap(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/PointEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPoint options "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/b/a$2;->c:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :cond_76
    if-nez v0, :cond_49c

    new-instance v0, Lcom/sigmob/sdk/base/models/PointEntity;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/PointEntity;-><init>()V

    move-object v1, v0

    :goto_7e
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->a:Ljava/lang/String;

    const-string v2, "401"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_85} :catch_474
    .catchall {:try_start_50 .. :try_end_85} :catchall_487

    move-result v0

    if-eqz v0, :cond_ae

    :try_start_88
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result v0

    if-eqz v0, :cond_44b

    const-string v0, "1"

    :goto_9c
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setGdpr_dialog_region(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_9f} :catch_499
    .catchall {:try_start_88 .. :try_end_9f} :catchall_487

    :goto_9f
    :try_start_9f
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->is_gdpr_region()Z

    move-result v0

    if-eqz v0, :cond_44f

    const-string v0, "1"

    :goto_ab
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setGdpr_region(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_ae} :catch_496
    .catchall {:try_start_9f .. :try_end_ae} :catchall_487

    :cond_ae
    :goto_ae
    :try_start_ae
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setUser_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setAc_type(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->b(Lcom/sigmob/sdk/base/common/b/a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setSeq_id(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "seq_id %s ac_type %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/PointEntity;->getSeq_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/PointEntity;->getAc_type()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setPlacement_id(Ljava/lang/String;)V

    :cond_f0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setCategory(Ljava/lang/String;)V

    :cond_fd
    const-string v0, "401"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3cc

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setUdid(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->av()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setGoogle_aid(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setAndroid_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setUid(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setOs(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Z()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setScreendensity(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setTime_zone(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Q()Z

    move-result v0

    if-eqz v0, :cond_453

    const-string v0, "5"

    :goto_16c
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setDevice_type(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setBrowser(Ljava/lang/String;)V

    const-string v0, "%sx%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setClientpixel(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->al()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setClienttype(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->T()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setScreenangle(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setCarrier(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setCheight(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->an()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setCwidth(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->au()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setPkgname(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->am()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setClientversion(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setLine1(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setLine2(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->at()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setGameversion(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->G()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_244

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setLat(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setLng(Ljava/lang/String;)V

    :cond_244
    const-string v0, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->U()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setBattery_level(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setBattery_state(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->V()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setBattery_save_enabled(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setIsEmulator(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setImei1(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setImei2(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c2

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setWifi_id(Ljava/lang/String;)V

    :cond_2c2
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setWifi_mac(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/PointEntity;->getAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e4

    iget v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->e:I

    if-lez v0, :cond_2e4

    iget v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setAdtype(Ljava/lang/String;)V
    :try_end_2e4
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_2e4} :catch_474
    .catchall {:try_start_ae .. :try_end_2e4} :catchall_487

    :cond_2e4
    :try_start_2e4
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setAaid(Ljava/lang/String;)V

    :cond_2f1
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2fe

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setOaid(Ljava/lang/String;)V

    :cond_2fe
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30b

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setVaid(Ljava/lang/String;)V
    :try_end_30b
    .catch Ljava/lang/Throwable; {:try_start_2e4 .. :try_end_30b} :catch_457
    .catchall {:try_start_2e4 .. :try_end_30b} :catchall_487

    :cond_30b
    :goto_30b
    :try_start_30b
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_3cc

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setCampaign_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setCreative_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setRequest_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setPlacement_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_352

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setProduct_id(Ljava/lang/String;)V

    :cond_352
    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setLoad_id(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setPlay_mode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setCreative_type(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setPrice(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/PointEntity;->setAd_source_channel(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    if-eqz v3, :cond_38e

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setOptions(Ljava/util/Map;)V

    :cond_38e
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/PointEntity;->getTarget_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setTarget_url(Ljava/lang/String;)V

    :cond_3a1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setAdtype(Ljava/lang/String;)V

    const-string v0, "crid "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requestId "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3cc
    const-string v0, "2.17.1"

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setSdkversion(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-eqz v0, :cond_3e6

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->X()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setNetworktype(Ljava/lang/String;)V

    :cond_3e6
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->c(Lcom/sigmob/sdk/base/common/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setWmsession_id(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->setTimestamp(Ljava/lang/String;)V

    const-string v0, " cate "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/PointEntity;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41a

    const-string v0, " placementId "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/b/a$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BPLog_debug "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/base/common/b/a$2$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/b/a$2$1;-><init>(Lcom/sigmob/sdk/base/common/b/a$2;)V

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/PointEntity;->insertToDB(Lcom/sigmob/sdk/base/a/m;)V
    :try_end_43c
    .catch Ljava/lang/Throwable; {:try_start_30b .. :try_end_43c} :catch_474
    .catchall {:try_start_30b .. :try_end_43c} :catchall_487

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/common/b/a;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4f

    :cond_44b
    :try_start_44b
    const-string v0, "0"
    :try_end_44d
    .catch Ljava/lang/Throwable; {:try_start_44b .. :try_end_44d} :catch_499
    .catchall {:try_start_44b .. :try_end_44d} :catchall_487

    goto/16 :goto_9c

    :cond_44f
    :try_start_44f
    const-string v0, "0"
    :try_end_451
    .catch Ljava/lang/Throwable; {:try_start_44f .. :try_end_451} :catch_496
    .catchall {:try_start_44f .. :try_end_451} :catchall_487

    goto/16 :goto_ab

    :cond_453
    :try_start_453
    const-string v0, "4"

    goto/16 :goto_16c

    :catch_457
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get OAID error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_472
    .catch Ljava/lang/Throwable; {:try_start_453 .. :try_end_472} :catch_474
    .catchall {:try_start_453 .. :try_end_472} :catchall_487

    goto/16 :goto_30b

    :catch_474
    move-exception v0

    :try_start_475
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_478
    .catchall {:try_start_475 .. :try_end_478} :catchall_487

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/common/b/a;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4f

    :catchall_487
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/common/b/a;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_496
    move-exception v0

    goto/16 :goto_ae

    :catch_499
    move-exception v0

    goto/16 :goto_9f

    :cond_49c
    move-object v1, v0

    goto/16 :goto_7e
.end method
