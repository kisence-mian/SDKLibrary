.class public final Lcom/tendcloud/tenddata/game/cy;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Landroid/os/Handler; = null

.field static b:Landroid/os/HandlerThread; = null

.field private static final c:Ljava/lang/String; = "check_wifi_permission"

.field private static final d:Ljava/lang/String; = "check_bs_permission"

.field private static final e:Ljava/lang/String; = "check_gps_permission"

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:J = 0x927c0L

.field private static volatile k:Lcom/tendcloud/tenddata/game/cy;

.field private static l:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cy;->k:Lcom/tendcloud/tenddata/game/cy;

    .line 57
    sput-object v0, Lcom/tendcloud/tenddata/game/cy;->a:Landroid/os/Handler;

    .line 58
    sput-object v0, Lcom/tendcloud/tenddata/game/cy;->b:Landroid/os/HandlerThread;

    .line 76
    :try_start_7
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cy;->a()Lcom/tendcloud/tenddata/game/cy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    .line 79
    goto :goto_14

    .line 77
    :catchall_13
    move-exception v0

    .line 80
    :goto_14
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    :try_start_3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "locHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cy;->b:Landroid/os/HandlerThread;

    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/tendcloud/tenddata/game/cz;

    sget-object v1, Lcom/tendcloud/tenddata/game/cy;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/cz;-><init>(Lcom/tendcloud/tenddata/game/cy;Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cy;->a:Landroid/os/Handler;

    .line 111
    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cy;->a(IJ)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    .line 115
    goto :goto_27

    .line 112
    :catchall_23
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 117
    :goto_27
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cy;
    .registers 2

    .line 64
    sget-object v0, Lcom/tendcloud/tenddata/game/cy;->k:Lcom/tendcloud/tenddata/game/cy;

    if-nez v0, :cond_17

    .line 65
    const-class v0, Lcom/tendcloud/tenddata/game/cy;

    monitor-enter v0

    .line 66
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/cy;->k:Lcom/tendcloud/tenddata/game/cy;

    if-nez v1, :cond_12

    .line 67
    new-instance v1, Lcom/tendcloud/tenddata/game/cy;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cy;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/cy;->k:Lcom/tendcloud/tenddata/game/cy;

    .line 69
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 71
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/cy;->k:Lcom/tendcloud/tenddata/game/cy;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/cy;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cy;->d()V

    return-void
.end method

.method private b()V
    .registers 5

    .line 192
    :try_start_0
    const-string v0, "check_wifi_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cy;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 193
    const/4 v0, 0x1

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cy;->a(IJ)V

    .line 194
    return-void

    .line 196
    :cond_10
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/tendcloud/tenddata/game/cy;->l:Landroid/net/wifi/WifiManager;

    .line 197
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 198
    new-instance v0, Lcom/tendcloud/tenddata/game/dg;

    sget-object v1, Lcom/tendcloud/tenddata/game/cy;->l:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/dg;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 199
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    .line 203
    :cond_37
    goto :goto_39

    .line 201
    :catchall_38
    move-exception v0

    .line 204
    :goto_39
    return-void
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/cy;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cy;->c()V

    return-void
.end method

.method private c()V
    .registers 6

    .line 210
    const-string v0, "check_gps_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cy;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/32 v1, 0x927c0

    const/4 v3, 0x2

    if-nez v0, :cond_10

    .line 211
    invoke-virtual {p0, v3, v1, v2}, Lcom/tendcloud/tenddata/game/cy;->a(IJ)V

    .line 212
    return-void

    .line 216
    :cond_10
    :try_start_10
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 217
    const-string v4, "env"

    iput-object v4, v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 218
    const-string v4, "locationUpdate"

    iput-object v4, v0, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 219
    sget-object v4, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v4, v0, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 220
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0, v3, v1, v2}, Lcom/tendcloud/tenddata/game/cy;->a(IJ)V
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2c

    .line 226
    goto :goto_30

    .line 223
    :catchall_2c
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 227
    :goto_30
    return-void
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/cy;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cy;->b()V

    return-void
.end method

.method private d()V
    .registers 4

    .line 232
    :try_start_0
    const-string v0, "check_bs_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cy;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 233
    const/4 v0, 0x3

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cy;->a(IJ)V

    .line 234
    return-void

    .line 236
    :cond_10
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_3a

    if-eqz v0, :cond_39

    .line 239
    :try_start_14
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 240
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_37

    .line 241
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 242
    new-instance v1, Lcom/tendcloud/tenddata/game/de;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/de;-><init>()V

    .line 243
    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 244
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    .line 247
    :cond_37
    goto :goto_39

    .line 246
    :catchall_38
    move-exception v0

    .line 251
    :cond_39
    :goto_39
    goto :goto_3e

    .line 249
    :catchall_3a
    move-exception v0

    .line 250
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 253
    :goto_3e
    return-void
.end method


# virtual methods
.method protected a(IJ)V
    .registers 5

    .line 122
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    iput p1, v0, Landroid/os/Message;->what:I

    .line 124
    sget-object p1, Lcom/tendcloud/tenddata/game/cy;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 128
    goto :goto_10

    .line 125
    :catchall_c
    move-exception p1

    .line 127
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 130
    :goto_10
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 9

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 146
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.READ_PHONE_STATE"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_3c

    .line 149
    :try_start_13
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_35

    if-nez v1, :cond_1d

    .line 150
    const/4 v1, 0x1

    goto :goto_1e

    .line 149
    :cond_1d
    const/4 v1, 0x0

    .line 153
    :goto_1e
    :try_start_1e
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_31

    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 154
    invoke-virtual {v3, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_33

    if-nez v2, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v2, 0x0

    goto :goto_32

    .line 157
    :cond_31
    :goto_31
    const/4 v2, 0x1

    .line 161
    :goto_32
    goto :goto_64

    .line 159
    :catchall_33
    move-exception v2

    goto :goto_37

    :catchall_35
    move-exception v2

    const/4 v1, 0x0

    .line 160
    :goto_37
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 161
    const/4 v2, 0x0

    goto :goto_64

    .line 164
    :cond_3c
    :try_start_3c
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_5e

    if-eqz v1, :cond_46

    .line 165
    const/4 v1, 0x1

    goto :goto_47

    .line 164
    :cond_46
    const/4 v1, 0x0

    .line 166
    :goto_47
    :try_start_47
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 167
    invoke-static {v3, v2}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_5c

    if-eqz v2, :cond_58

    goto :goto_5a

    :cond_58
    const/4 v2, 0x0

    goto :goto_5b

    .line 168
    :cond_5a
    :goto_5a
    const/4 v2, 0x1

    .line 171
    :goto_5b
    goto :goto_64

    .line 169
    :catchall_5c
    move-exception v2

    goto :goto_60

    :catchall_5e
    move-exception v2

    const/4 v1, 0x0

    .line 170
    :goto_60
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 173
    :goto_64
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v3, v4}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 174
    const/4 v3, 0x1

    goto :goto_71

    .line 173
    :cond_70
    const/4 v3, 0x0

    .line 177
    :goto_71
    const-string v4, "check_bs_permission"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 178
    if-eqz v2, :cond_7e

    if-eqz v1, :cond_7e

    const/4 v5, 0x1

    :cond_7e
    return v5

    .line 179
    :cond_7f
    const-string v1, "check_gps_permission"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 180
    return v2

    .line 181
    :cond_88
    const-string v1, "check_wifi_permission"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 182
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 183
    if-eqz v3, :cond_9b

    if-eqz v2, :cond_9b

    const/4 v5, 0x1

    :cond_9b
    return v5

    .line 185
    :cond_9c
    return v3

    .line 187
    :cond_9d
    return v5
.end method

.method public final onTDEBEventLocationEvent(Lcom/tendcloud/tenddata/game/di;)V
    .registers 2

    .line 134
    return-void
.end method
