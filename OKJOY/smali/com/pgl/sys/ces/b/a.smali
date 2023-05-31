.class public final Lcom/pgl/sys/ces/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static f:Lcom/pgl/sys/ces/b/a;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:I

.field private c:I

.field private d:[F

.field private e:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pgl/sys/ces/b/a;->c:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    :cond_27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pgl/sys/ces/b/a;
    .registers 3

    sget-object v0, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    if-nez v0, :cond_13

    const-class v1, Lcom/pgl/sys/ces/b/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/pgl/sys/ces/b/a;

    invoke-direct {v0, p0}, Lcom/pgl/sys/ces/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_22
    .catchall {:try_start_1 .. :try_end_16} :catchall_24

    move-result v0

    if-nez v0, :cond_1b

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pgl/sys/ces/b/a;->b:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_22
    .catchall {:try_start_1b .. :try_end_21} :catchall_24

    goto :goto_19

    :catch_22
    move-exception v0

    goto :goto_19

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_16
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :catch_16
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_14

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pgl/sys/ces/b/a;->b()V

    :try_start_6
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7} :catch_1b
    .catchall {:try_start_6 .. :try_end_7} :catchall_b0

    move v0, v1

    :goto_8
    :try_start_8
    iget v2, p0, Lcom/pgl/sys/ces/b/a;->c:I

    if-nez v2, :cond_67

    const/16 v2, 0xa

    if-ge v0, v2, :cond_67

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_8

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_b0

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_b0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v3, v3, v1

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v3, v3, v6

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v3, v3, v7

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/pgl/sys/ces/b/a;->c()V

    iput v1, p0, Lcom/pgl/sys/ces/b/a;->c:I

    :goto_66
    return-object v0

    :cond_67
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v3, v3, v1

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v3, v3, v6

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v3, v3, v7

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/pgl/sys/ces/b/a;->c()V

    iput v1, p0, Lcom/pgl/sys/ces/b/a;->c:I

    goto :goto_66

    :catchall_b0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v4, v4, v1

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v4, v4, v6

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v4, v4, v7

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/pgl/sys/ces/b/a;->c()V

    iput v1, p0, Lcom/pgl/sys/ces/b/a;->c:I

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    const/4 v0, 0x1

    iput v0, p0, Lcom/pgl/sys/ces/b/a;->c:I

    return-void
.end method
