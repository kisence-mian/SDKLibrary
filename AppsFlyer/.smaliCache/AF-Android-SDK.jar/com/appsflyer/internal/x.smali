.class final Lcom/appsflyer/internal/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final AFInAppEventParameterName:[[F

.field final AFInAppEventType:[J

.field AFKeystoreWrapper:J

.field private final AFLogger$LogLevel:I

.field private final AFVersionDeclaration:Ljava/util/concurrent/Executor;

.field private final getLevel:Ljava/lang/String;

.field private final init:Ljava/lang/String;

.field valueOf:D

.field private final values:I


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    new-array v1, v0, [[F

    iput-object v1, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:[[F

    .line 32
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    .line 39
    iput-object p2, p0, Lcom/appsflyer/internal/x;->AFVersionDeclaration:Ljava/util/concurrent/Executor;

    .line 40
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p2

    iput p2, p0, Lcom/appsflyer/internal/x;->values:I

    .line 41
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1048
    const-string v1, ""

    if-nez v0, :cond_1d

    move-object v0, v1

    .line 41
    :cond_1d
    iput-object v0, p0, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p1

    .line 2048
    if-nez p1, :cond_26

    goto :goto_27

    :cond_26
    move-object v1, p1

    .line 42
    :goto_27
    iput-object v1, p0, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    .line 43
    nop

    .line 2053
    add-int/lit8 p2, p2, 0x1f

    .line 2054
    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    .line 2055
    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    .line 43
    iput p2, p0, Lcom/appsflyer/internal/x;->AFLogger$LogLevel:I

    .line 44
    return-void
.end method

.method private AFInAppEventParameterName()Z
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method static synthetic AFInAppEventType([F[F)D
    .registers 10

    .line 18
    nop

    .line 3064
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3065
    nop

    .line 3066
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_1d

    .line 3067
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    .line 3066
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3069
    :cond_1d
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 18
    return-wide p0
.end method

.method private AFInAppEventType(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 154
    iget v0, p0, Lcom/appsflyer/internal/x;->values:I

    if-ne v0, p1, :cond_16

    iget-object p1, p0, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    .line 156
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    .line 154
    return p1
.end method

.method private static AFKeystoreWrapper([F)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 76
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 78
    :cond_16
    return-object v0
.end method

.method private AFKeystoreWrapper()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 169
    iget v1, p0, Lcom/appsflyer/internal/x;->values:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    const-string v2, "sN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    const-string v2, "sV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 173
    if-eqz v1, :cond_2f

    .line 174
    invoke-static {v1}, Lcom/appsflyer/internal/x;->AFKeystoreWrapper([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2f
    iget-object v1, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 177
    if-eqz v1, :cond_3f

    .line 178
    invoke-static {v1}, Lcom/appsflyer/internal/x;->AFKeystoreWrapper([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_3f
    return-object v0
.end method


# virtual methods
.method final AFInAppEventType(Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/x;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/appsflyer/internal/x;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 144
    invoke-direct {p0}, Lcom/appsflyer/internal/x;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    if-eqz p2, :cond_41

    .line 146
    nop

    .line 2188
    iget-object p1, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:[[F

    array-length p1, p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p1, :cond_1f

    .line 2189
    iget-object v1, p0, Lcom/appsflyer/internal/x;->AFInAppEventParameterName:[[F

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2188
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2191
    :cond_1f
    iget-object p1, p0, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    array-length p1, p1

    :goto_22
    const-wide/16 v0, 0x0

    if-ge p2, p1, :cond_2d

    .line 2192
    iget-object v2, p0, Lcom/appsflyer/internal/x;->AFInAppEventType:[J

    aput-wide v0, v2, p2

    .line 2191
    add-int/lit8 p2, p2, 0x1

    goto :goto_22

    .line 2194
    :cond_2d
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/appsflyer/internal/x;->valueOf:D

    .line 2195
    iput-wide v0, p0, Lcom/appsflyer/internal/x;->AFKeystoreWrapper:J

    .line 146
    return-void

    .line 148
    :cond_34
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    .line 149
    invoke-direct {p0}, Lcom/appsflyer/internal/x;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_41
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 218
    if-ne p1, p0, :cond_4

    .line 219
    const/4 p1, 0x1

    return p1

    .line 221
    :cond_4
    instance-of v0, p1, Lcom/appsflyer/internal/x;

    if-eqz v0, :cond_15

    .line 222
    check-cast p1, Lcom/appsflyer/internal/x;

    .line 223
    iget v0, p1, Lcom/appsflyer/internal/x;->values:I

    iget-object v1, p1, Lcom/appsflyer/internal/x;->getLevel:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/x;->init:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/x;->AFInAppEventType(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 225
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/appsflyer/internal/x;->AFLogger$LogLevel:I

    return v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 126
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 83
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 84
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 85
    iget-object v2, p0, Lcom/appsflyer/internal/x;->AFVersionDeclaration:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/x$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/appsflyer/internal/x$3;-><init>(Lcom/appsflyer/internal/x;[FJ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method
