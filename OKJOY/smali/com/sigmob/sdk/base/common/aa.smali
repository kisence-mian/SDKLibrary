.class public Lcom/sigmob/sdk/base/common/aa;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;
    .registers 4

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->android_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->udid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_19
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->av()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->gaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_2a
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->uid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_3b
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imei(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_4c
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->android_uuid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_5c
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imsi(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_6d
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imei1(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_7f
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imei2(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_91
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9e

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->brand(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_9e} :catch_e2

    :cond_9e
    :try_start_9e
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->aaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ab} :catch_c6
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_ab} :catch_e2

    :cond_ab
    :goto_ab
    :try_start_ab
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b8

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->oaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b8} :catch_e9

    :cond_b8
    :goto_b8
    :try_start_b8
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c5

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->vaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_c5} :catch_105

    :cond_c5
    :goto_c5
    return-object v1

    :catch_c6
    move-exception v0

    :try_start_c7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_e1} :catch_e2

    goto :goto_ab

    :catch_e2
    move-exception v0

    const-string v2, "DeviceId Builder failed"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c5

    :catch_e9
    move-exception v0

    :try_start_ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_b8

    :catch_105
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_120} :catch_e2

    goto :goto_c5
.end method

.method private static a(III)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->major(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->micro(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->minor(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;
    .registers 6

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_9
    array-length v0, v3

    if-le v0, v4, :cond_26

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_20} :catch_48

    move-result v1

    :goto_21
    invoke-static {v2, v1, v0}, Lcom/sigmob/sdk/base/common/aa;->a(III)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    move-result-object v0

    return-object v0

    :cond_26
    :try_start_26
    array-length v0, v3

    if-le v0, v2, :cond_38

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_21

    :cond_38
    array-length v0, v3

    if-lez v0, :cond_45

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_41} :catch_48

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_21

    :cond_45
    move v0, v1

    move v2, v1

    goto :goto_21

    :catch_48
    move-exception v0

    move v0, v1

    move v2, v1

    goto :goto_21
.end method

.method public static b()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;
    .registers 4

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Q()Z

    move-result v0

    if-eqz v0, :cond_17f

    const/4 v0, 0x5

    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->device_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->os_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    :try_start_1f
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->U()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->battery_level(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->battery_state(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->V()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->battery_save_enabled(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Z()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->dpi(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->am()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/aa;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->os_version(Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->vendor(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->J()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->is_root(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;->height(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->an()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;->width(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->al()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->al()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->model(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    :cond_b3
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->screen_size(Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->h()Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->geo(Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e5

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->device_name(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    :cond_e5
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->start_timestamp(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->android_api_level(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->mem_size(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_156

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->sd_total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->sd_free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    :cond_156
    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aq()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;->height:Ljava/lang/Integer;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ao()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->resolution(Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;
    :try_end_17e
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_17e} :catch_182

    :goto_17e
    return-object v1

    :cond_17f
    const/4 v0, 0x4

    goto/16 :goto_10

    :catch_182
    move-exception v0

    const-string v2, "Device Builder failed"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17e
.end method

.method public static c()Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 3

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->au()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->au()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_package(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_96

    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_33} :catch_91

    :cond_33
    :goto_33
    :try_start_33
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->T()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->orientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->name(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    :cond_5b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_9d

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->support_http:Ljava/lang/Boolean;

    :goto_6f
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->at()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/aa;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->version_str(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_version(Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    :cond_8b
    const-string v0, "android"

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->idfv(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    :goto_90
    return-object v1

    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_95} :catch_96

    goto :goto_33

    :catch_96
    move-exception v0

    const-string v2, "App Builder failed"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_90

    :cond_9d
    const/4 v0, 0x1

    :try_start_9e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->support_http:Ljava/lang/Boolean;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a4} :catch_96

    goto :goto_6f
.end method

.method public static d()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;-><init>()V

    return-object v0
.end method

.method public static e()Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 3

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->X()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->X()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->connection_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    :cond_22
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->operator(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    :cond_33
    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->ua(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    :cond_40
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->X()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->X()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->connection_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    :cond_5d
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->mac(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    :cond_6e
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_mac(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    :cond_7f
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_90} :catch_91

    :cond_90
    :goto_90
    return-object v1

    :catch_91
    move-exception v0

    const-string v2, "Network Builder failed"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_90
.end method

.method public static f()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;
    .registers 4

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "bluetoothName"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "cpu_32I"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "CPUModel"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->c()Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->app(Lcom/sigmob/sdk/base/models/sigdsp/pb/App;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->b()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->device(Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l()Ljava/lang/String;

    new-instance v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->age(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->child_protection(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_70} :catch_8c

    const/4 v0, 0x0

    :try_start_71
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_7c} :catch_95

    move-result v0

    :goto_7d
    :try_start_7d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->gdpr_consent(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->privacy(Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_8b} :catch_8c

    :goto_8b
    return-object v1

    :catch_8c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_8b

    :catch_95
    move-exception v3

    goto :goto_7d
.end method

.method public static g()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->language(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->country(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_33
    return-object v0
.end method

.method private static h()Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;
    .registers 4

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->country(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    :cond_2d
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->language(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    :cond_4e
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->G()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->lat(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->lon(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;

    :cond_70
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;->timeZone(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_7b} :catch_7c

    :goto_7b
    return-object v1

    :catch_7c
    move-exception v0

    const-string v2, "Geo Builder failed"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7b
.end method
