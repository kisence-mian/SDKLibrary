.class public final Lcom/pgl/sys/ces/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static f:Lcom/pgl/sys/ces/b/b;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:I

.field private c:I

.field private d:[F

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pgl/sys/ces/b/b;->f:Lcom/pgl/sys/ces/b/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/sys/ces/b/b;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pgl/sys/ces/b/b;->c:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_27

    :try_start_1b
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/pgl/sys/ces/b/b;->a:Landroid/hardware/SensorManager;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_26

    goto :goto_27

    :catchall_26
    move-exception p1

    :cond_27
    :goto_27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pgl/sys/ces/b/b;
    .registers 3

    sget-object v0, Lcom/pgl/sys/ces/b/b;->f:Lcom/pgl/sys/ces/b/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/pgl/sys/ces/b/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/pgl/sys/ces/b/b;->f:Lcom/pgl/sys/ces/b/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/pgl/sys/ces/b/b;

    invoke-direct {v1, p0}, Lcom/pgl/sys/ces/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pgl/sys/ces/b/b;->f:Lcom/pgl/sys/ces/b/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/pgl/sys/ces/b/b;->f:Lcom/pgl/sys/ces/b/b;

    return-object p0
.end method

.method private declared-synchronized d()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pgl/sys/ces/b/b;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_23

    iget v1, p0, Lcom/pgl/sys/ces/b/b;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_19

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/pgl/sys/ces/b/b;->a:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_22
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    if-nez v0, :cond_19

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget v0, p0, Lcom/pgl/sys/ces/b/b;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/pgl/sys/ces/b/b;->b:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_22
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_22
    move-exception v0

    :cond_23
    :goto_23
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized e()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pgl/sys/ces/b/b;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/pgl/sys/ces/b/b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pgl/sys/ces/b/b;->b:I

    if-nez v1, :cond_15

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_14
    move-exception v0

    :cond_15
    :goto_15
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    invoke-direct {p0}, Lcom/pgl/sys/ces/b/b;->d()V

    monitor-enter p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_61

    move v4, v2

    :goto_9
    :try_start_9
    iget v5, p0, Lcom/pgl/sys/ces/b/b;->c:I

    if-nez v5, :cond_19

    const/16 v5, 0xa

    if-ge v4, v5, :cond_19

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_9

    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_5e

    :try_start_1a
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.0"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    aget v6, v6, v2

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    aget v1, v6, v1

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    aget v0, v5, v0

    float-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_a6

    goto :goto_a7

    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v4

    :try_start_62
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.0"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    aget v6, v6, v2

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    aget v1, v6, v1

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    aget v0, v5, v0

    float-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_a5
    .catchall {:try_start_62 .. :try_end_a5} :catchall_a6

    goto :goto_a7

    :catchall_a6
    move-exception v0

    :goto_a7
    invoke-direct {p0}, Lcom/pgl/sys/ces/b/b;->e()V

    iput v2, p0, Lcom/pgl/sys/ces/b/b;->c:I

    return-object v3
.end method

.method public b()V
    .registers 5

    invoke-virtual {p0}, Lcom/pgl/sys/ces/b/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_c
    iget-object v0, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    add-int/lit8 v3, v0, -0xa

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2b

    goto :goto_2c

    :catchall_2b
    move-exception v0

    :cond_2c
    :goto_2c
    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    iget-object v1, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_5b

    if-gtz v1, :cond_d

    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1b

    :try_start_11
    iget-object v0, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_5b

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/pgl/sys/ces/b/b;->e:Ljava/util/List;

    add-int/lit8 v5, v1, -0xa

    if-lez v5, :cond_22

    goto :goto_23

    :cond_22
    move v5, v3

    :goto_23
    invoke-interface {v4, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move v4, v3

    :goto_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_58

    goto :goto_59

    :catchall_58
    move-exception v1

    :goto_59
    monitor-exit p0

    return-object v0

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/pgl/sys/ces/b/b;->d:[F

    const/4 p1, 0x1

    iput p1, p0, Lcom/pgl/sys/ces/b/b;->c:I

    return-void
.end method
