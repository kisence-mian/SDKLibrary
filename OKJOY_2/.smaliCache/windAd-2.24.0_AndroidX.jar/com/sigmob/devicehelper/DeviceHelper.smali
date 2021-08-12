.class public final Lcom/sigmob/devicehelper/DeviceHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/sigmob/devicehelper/DeviceHelper;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Lcom/sigmob/devicehelper/DeviceHelper;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/sigmob/devicehelper/DeviceHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/sigmob/devicehelper/DeviceHelper;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/sigmob/devicehelper/DeviceHelper;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static getAAID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/devicehelper/DeviceHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_14

    :catchall_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static getCCID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-object p0

    :catchall_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_c

    return-object v0

    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_27

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_2e

    if-eqz v2, :cond_2b

    :try_start_1c
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_21

    return-object p0

    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_2e

    :cond_2b
    if-eqz v1, :cond_2f

    return-object v1

    :catch_2e
    move-exception p0

    :cond_2f
    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_c

    return-object v0

    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_27

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_2e

    if-eqz v2, :cond_2b

    :try_start_1c
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_21

    return-object p0

    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_2e

    :cond_2b
    if-eqz v1, :cond_2f

    return-object v1

    :catch_2e
    move-exception p0

    :cond_2f
    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-object p0

    :catchall_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/sigmob/devicehelper/DeviceHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/sigmob/devicehelper/DeviceHelper;->d:Landroid/os/Handler;

    if-nez v0, :cond_17

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sigmob/devicehelper/DeviceHelper;->d:Landroid/os/Handler;

    :cond_17
    sget-object v0, Lcom/sigmob/devicehelper/DeviceHelper;->d:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/devicehelper/DeviceHelper$1;

    invoke-direct {v1, p0}, Lcom/sigmob/devicehelper/DeviceHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    sget-object p0, Lcom/sigmob/devicehelper/DeviceHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static getVAID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/devicehelper/DeviceHelper;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getSimByMethod(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 9

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v4

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2f

    if-eqz p1, :cond_30

    return-object p1

    :catchall_2f
    move-exception p1

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSimPhonenumber(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sigmob/devicehelper/DeviceHelper;->getSimStateBySlotIdx(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "getLine1Number"

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/devicehelper/DeviceHelper;->getSubidBySlotId(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/sigmob/devicehelper/DeviceHelper;->getSimByMethod(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSimStateBySlotIdx(Landroid/content/Context;I)Z
    .registers 4

    const-string v0, "getSimState"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sigmob/devicehelper/DeviceHelper;->getSimByMethod(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, p2, :cond_16

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    return p2
.end method

.method public getSubidBySlotId(Landroid/content/Context;I)I
    .registers 8

    :try_start_0
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getSubId"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    check-cast p1, [I

    check-cast p1, [I

    aget p1, p1, v4
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_5e

    return p1

    :catchall_5e
    move-exception p1

    const-string p2, "getSubidBySlotId: "

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_64
    const/4 p1, -0x1

    return p1
.end method
