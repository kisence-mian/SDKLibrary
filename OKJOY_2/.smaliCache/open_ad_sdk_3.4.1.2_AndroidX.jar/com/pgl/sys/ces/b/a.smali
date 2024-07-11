.class public Lcom/pgl/sys/ces/b/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/pgl/sys/ces/b/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
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

    sput-object v0, Lcom/pgl/sys/ces/b/a;->c:Lcom/pgl/sys/ces/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pgl/sys/ces/b/a;
    .registers 3

    sget-object v0, Lcom/pgl/sys/ces/b/a;->c:Lcom/pgl/sys/ces/b/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/pgl/sys/ces/b/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/pgl/sys/ces/b/a;->c:Lcom/pgl/sys/ces/b/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/pgl/sys/ces/b/a;

    invoke-direct {v1, p0}, Lcom/pgl/sys/ces/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pgl/sys/ces/b/a;->c:Lcom/pgl/sys/ces/b/a;

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
    sget-object p0, Lcom/pgl/sys/ces/b/a;->c:Lcom/pgl/sys/ces/b/a;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 5

    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    return v1

    :cond_12
    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public b()I
    .registers 4

    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    return v1

    :cond_12
    const-string v2, "plugged"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 7

    const/4 v0, -0x1

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_43
    .catchall {:try_start_1 .. :try_end_2} :catchall_2b

    :try_start_2
    invoke-virtual {p0}, Lcom/pgl/sys/ces/b/a;->b()I

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_23

    :try_start_6
    invoke-virtual {p0}, Lcom/pgl/sys/ces/b/a;->a()I

    move-result v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_55

    :catchall_1e
    move-exception v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_25

    :catchall_23
    move-exception v2

    move v1, v0

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_29

    :try_start_26
    throw v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_27} :catch_43
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    goto :goto_2d

    :catchall_29
    move-exception v2

    goto :goto_25

    :catchall_2b
    move-exception v2

    move v1, v0

    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v2

    :catch_43
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 5

    invoke-virtual {p0}, Lcom/pgl/sys/ces/b/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_c
    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

    add-int/lit8 v3, v0, -0xa

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2b

    goto :goto_2c

    :catchall_2b
    move-exception v0

    :cond_2c
    :goto_2c
    return-void
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, ""

    iget-object v1, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_5b

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->b:Ljava/util/List;

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

    const-string v6, ","

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
