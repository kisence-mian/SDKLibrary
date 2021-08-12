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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->model:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1f

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_21

    :cond_1f
    const/16 v0, 0x78

    :goto_21
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->e:I

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v1, :cond_32

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v0, v2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a(FI)I

    move-result v0

    goto :goto_34

    :cond_32
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_34
    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->c:I

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getVersion()I

    move-result v0

    if-le v0, v1, :cond_45

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v0, p1}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a(FI)I

    move-result p1

    goto :goto_47

    :cond_45
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_47
    iput p1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->d:I

    invoke-direct {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->a()V

    return-void
.end method

.method private a(FI)I
    .registers 4

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_10

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    :cond_10
    return p2
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/status/DeviceStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    if-nez v1, :cond_e

    return-void

    :cond_e
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_6a

    :try_start_25
    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->l:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->m:F

    goto :goto_6d

    :cond_5c
    new-instance v6, Lcom/qq/e/comm/managers/status/DeviceStatus$1;

    invoke-direct {v6, p0, v1}, Lcom/qq/e/comm/managers/status/DeviceStatus$1;-><init>(Lcom/qq/e/comm/managers/status/DeviceStatus;Landroid/location/LocationManager;)V
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_6c

    const-wide/16 v3, 0x7d0

    const v5, 0x45dac000    # 7000.0f

    :try_start_66
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6d

    :catchall_6a
    move-exception v0

    goto :goto_6d

    :catchall_6c
    move-exception v0

    :goto_6d
    return-void
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

    if-eqz v0, :cond_51

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "46020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_4e

    :cond_27
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "46006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_4b

    :cond_38
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_48
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->TELECOM:Lcom/qq/e/comm/managers/status/Carrier;

    return-object v0

    :cond_4b
    :goto_4b
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNICOM:Lcom/qq/e/comm/managers/status/Carrier;

    return-object v0

    :cond_4e
    :goto_4e
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->CMCC:Lcom/qq/e/comm/managers/status/Carrier;

    return-object v0

    :cond_51
    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNKNOWN:Lcom/qq/e/comm/managers/status/Carrier;

    return-object v0
.end method

.method public getDataNet()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_12

    :catch_10
    move-exception v1

    move-object v1, v0

    :goto_12
    if-nez v1, :cond_15

    return-object v0

    :cond_15
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    const-string v0, "unknow"

    goto :goto_24

    :pswitch_1f
    const-string v0, "wi"

    goto :goto_24

    :pswitch_22
    const-string v0, "ed"

    :goto_24
    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->i:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
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

    return-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLacAndCeilId()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getOperator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    return-object v1

    :cond_14
    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8c

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8c

    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_24
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1cc

    if-ne v0, v2, :cond_8c

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    instance-of v4, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_4d

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_63

    :cond_4d
    instance-of v2, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_62

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_63

    :cond_62
    move v0, v3

    :goto_63
    const-string v2, "lac"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cellid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_24 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8c
    :goto_8c
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "en"

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->b:Ljava/lang/String;

    :cond_1e
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
    .registers 3

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getDataNet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "wi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->WIFI:Lcom/qq/e/comm/managers/status/NetworkType;

    return-object v0

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getPhoneNet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_1c

    :catch_1a
    move-exception v0

    const/4 v0, 0x0

    :goto_1c
    packed-switch v0, :pswitch_data_2c

    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/comm/managers/status/NetworkType;

    return-object v0

    :pswitch_22
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_4G:Lcom/qq/e/comm/managers/status/NetworkType;

    return-object v0

    :pswitch_25
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_3G:Lcom/qq/e/comm/managers/status/NetworkType;

    return-object v0

    :pswitch_28
    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_2G:Lcom/qq/e/comm/managers/status/NetworkType;

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
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
        :pswitch_22
        :pswitch_25
        :pswitch_22
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public getOS()Ljava/lang/String;
    .registers 2

    const-string v0, "android"

    return-object v0
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_12
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNet()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    :try_start_8
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->h:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception v0

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainDid()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_64

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v0

    const-string v2, "imeion"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/qq/e/comm/managers/setting/SM;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_29

    goto :goto_64

    :cond_29
    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->isAgreePrivacyStrategyNonNull()Z

    move-result v0

    if-nez v0, :cond_30

    return-object v1

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_41

    goto :goto_58

    :catch_41
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get imei encounter error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :goto_58
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    return-object v1

    :cond_61
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->j:Ljava/lang/String;

    return-object v0

    :cond_64
    :goto_64
    return-object v1
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

    if-ne v0, v1, :cond_12

    const-string v0, "l"

    goto :goto_14

    :cond_12
    const-string v0, "p"

    :goto_14
    iput-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v0

    const-string v1, "adidon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/setting/SM;->getInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, ""

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-static {v0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    iput-object v1, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    :cond_2c
    iget-object v0, p0, Lcom/qq/e/comm/managers/status/DeviceStatus;->a:Ljava/lang/String;

    return-object v0

    :cond_2f
    return-object v1
.end method

.method public getVersion()I
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    return v0

    :catch_3
    move-exception v0

    const/4 v0, 0x3

    return v0
.end method
