.class public Lcom/tendcloud/tenddata/game/bk;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bk$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/tendcloud/tenddata/game/bk; = null

.field private static final g:J = 0x2710L

.field private static final h:I = 0xa


# instance fields
.field private a:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private e:J

.field private final f:I

.field private i:Landroid/hardware/SensorManager;

.field private j:Lcom/tendcloud/tenddata/game/bk$a;

.field private k:Landroid/os/Handler;

.field private l:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bk;->b:Lcom/tendcloud/tenddata/game/bk;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bk;->a:Landroid/content/Context;

    .line 21
    const/16 v1, 0xfa

    iput v1, p0, Lcom/tendcloud/tenddata/game/bk;->c:I

    .line 23
    const/16 v1, 0x12

    iput v1, p0, Lcom/tendcloud/tenddata/game/bk;->d:I

    .line 24
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tendcloud/tenddata/game/bk;->e:J

    .line 25
    const/4 v1, 0x5

    iput v1, p0, Lcom/tendcloud/tenddata/game/bk;->f:I

    .line 31
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bk;->j:Lcom/tendcloud/tenddata/game/bk$a;

    .line 33
    new-instance v0, Lcom/tendcloud/tenddata/game/bl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/bl;-><init>(Lcom/tendcloud/tenddata/game/bk;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bk;->k:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/tendcloud/tenddata/game/bm;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/bm;-><init>(Lcom/tendcloud/tenddata/game/bk;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bk;->l:Landroid/hardware/SensorEventListener;

    .line 62
    :try_start_29
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bk;->a:Landroid/content/Context;

    .line 64
    const-string v0, "sensor"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bk;->i:Landroid/hardware/SensorManager;

    .line 67
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bk;->l:Landroid/hardware/SensorEventListener;

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 67
    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 74
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bk;->k:Landroid/os/Handler;

    const/16 v0, 0xa

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_49

    .line 78
    goto :goto_4d

    .line 75
    :catchall_49
    move-exception p1

    .line 77
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 79
    :goto_4d
    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bk;J)J
    .registers 3

    .line 16
    iput-wide p1, p0, Lcom/tendcloud/tenddata/game/bk;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorManager;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/bk;->i:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/tendcloud/tenddata/game/bk;
    .registers 3

    .line 50
    sget-object v0, Lcom/tendcloud/tenddata/game/bk;->b:Lcom/tendcloud/tenddata/game/bk;

    if-nez v0, :cond_17

    .line 51
    const-class v0, Lcom/tendcloud/tenddata/game/bk;

    monitor-enter v0

    .line 52
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/bk;->b:Lcom/tendcloud/tenddata/game/bk;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lcom/tendcloud/tenddata/game/bk;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/bk;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/bk;->b:Lcom/tendcloud/tenddata/game/bk;

    .line 55
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 57
    :cond_17
    :goto_17
    sget-object p0, Lcom/tendcloud/tenddata/game/bk;->b:Lcom/tendcloud/tenddata/game/bk;

    return-object p0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorEventListener;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/bk;->l:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/bk;)J
    .registers 3

    .line 16
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/bk;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tendcloud/tenddata/game/bk;)Lcom/tendcloud/tenddata/game/bk$a;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/bk;->j:Lcom/tendcloud/tenddata/game/bk$a;

    return-object p0
.end method

.method static synthetic e(Lcom/tendcloud/tenddata/game/bk;)Landroid/content/Context;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/bk;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public registerTestDeviceListener(Lcom/tendcloud/tenddata/game/bk$a;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bk;->j:Lcom/tendcloud/tenddata/game/bk$a;

    .line 83
    return-void
.end method
