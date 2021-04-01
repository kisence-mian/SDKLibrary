.class public Lcom/qq/e/comm/managers/status/DeviceStatus;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/String;

.field private volatile m:F

.field public final model:Ljava/lang/String;

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->model:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v3, :cond_44

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_1e
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->e:I

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v3, :cond_47

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v0, v2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a(FI)I

    move-result v0

    :goto_2e
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->c:I

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v3, :cond_4a

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a(FI)I

    move-result v0

    :goto_3e
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->d:I

    invoke-direct {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a()V

    return-void

    :cond_44
    const/16 v0, 0x78

    goto :goto_1e

    :cond_47
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2e

    :cond_4a
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_3e
.end method

.method private a(FI)I
    .registers 4

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int p2, v0

    :cond_f
    return p2
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/status/DeviceStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_70

    const/4 v2, 0x1

    :try_start_27
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->l:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->m:F

    goto :goto_c

    :catch_5e
    move-exception v0

    goto :goto_c

    :cond_60
    new-instance v5, Lcom/qq/e/comm/managers/status/DeviceStatus$1;

    invoke-direct {v5, p0, v0}, Lcom/qq/e/comm/managers/status/DeviceStatus$1;-><init>(Lcom/qq/e/comm/managers/status/DeviceStatus;Landroid/location/LocationManager;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_65} :catch_5e

    const-wide/16 v2, 0x7d0

    const v4, 0x45dac000    # 7000.0f

    :try_start_6a
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_c

    :catch_6e
    move-exception v0

    goto :goto_c

    :catch_70
    move-exception v0

    goto :goto_c
.end method

.method static synthetic b(Lcom/qq/e/comm/managers/status/DeviceStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->l:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCarrier()Lcom/qq/e/comm/managers/status/Carrier;
    .registers 3

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "46020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_26
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->CMCC:Lcom/qq/e/comm/managers/status/Carrier;

    :goto_28
    return-object v0

    :cond_29
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "46006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_39
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNICOM:Lcom/qq/e/comm/managers/status/Carrier;

    goto :goto_28

    :cond_3c
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4c
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->TELECOM:Lcom/qq/e/comm/managers/status/Carrier;

    goto :goto_28

    :cond_4f
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNKNOWN:Lcom/qq/e/comm/managers/status/Carrier;

    goto :goto_28
.end method

.method public getDataNet()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_13

    move-result-object v0

    :goto_f
    if-nez v0, :cond_16

    move-object v0, v1

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    move-object v0, v1

    goto :goto_f

    :cond_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    const-string v0, "unknow"

    :goto_1f
    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->i:Ljava/lang/String;

    goto :goto_12

    :pswitch_24
    const-string v0, "ed"

    goto :goto_1f

    :pswitch_27
    const-string v0, "wi"

    goto :goto_1f

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public getDeviceDensity()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->e:I

    return v0
.end method

.method public getDeviceHeight()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->d:I

    return v0
.end method

.method public getDeviceWidth()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->c:I

    return v0
.end method

.method public getDid()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getPlainDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getLacAndCeilId()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getOperator()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const/4 v2, 0x0

    const/4 v5, 0x3

    :try_start_1a
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1cc

    if-ne v1, v2, :cond_68

    iget-object v1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    instance-of v5, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_69

    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_44
    const-string v2, "lac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cellid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    :goto_68
    return-object v4

    :cond_69
    instance-of v2, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_83

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_7c} :catch_7e

    move-result v1

    goto :goto_44

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    :cond_83
    move v1, v3

    goto :goto_44
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    if-nez v0, :cond_20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "en"

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    :cond_20
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationAccuracy()F
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->m:F

    return v0
.end method

.method public getNetworkType()Lcom/qq/e/comm/managers/status/NetworkType;
    .registers 4

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getDataNet()Ljava/lang/String;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getPhoneNet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_b} :catch_19

    move-result v0

    :goto_c
    if-eqz v1, :cond_1c

    const-string v2, "wi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->WIFI:Lcom/qq/e/comm/managers/status/NetworkType;

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c

    :cond_1c
    packed-switch v0, :pswitch_data_2c

    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_18

    :pswitch_22
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_2G:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_18

    :pswitch_25
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_3G:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_18

    :pswitch_28
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_4G:Lcom/qq/e/comm/managers/status/NetworkType;

    goto :goto_18

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_28
        :pswitch_25
        :pswitch_28
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public getOperator()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->g:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_13

    :goto_10
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->g:Ljava/lang/String;

    return-object v0

    :catch_13
    move-exception v0

    goto :goto_10
.end method

.method public getPhoneNet()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->h:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_20

    :goto_1d
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->h:Ljava/lang/String;

    return-object v0

    :catch_20
    move-exception v0

    goto :goto_1d
.end method

.method public getPlainDid()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_26

    :goto_1b
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, ""

    goto :goto_a

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get imei encounter error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_1b

    :cond_3e
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    goto :goto_a
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    const-string v0, "l"

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    :goto_13
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    return-object v0

    :cond_16
    const-string v0, "p"

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    goto :goto_13
.end method

.method public getUid()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    return-object v0

    :cond_1d
    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public getVersion()I
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return v0

    :catch_3
    move-exception v0

    const/4 v0, 0x3

    goto :goto_2
.end method
