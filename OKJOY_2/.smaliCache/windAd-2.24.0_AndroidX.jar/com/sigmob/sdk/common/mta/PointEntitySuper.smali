.class public abstract Lcom/sigmob/sdk/common/mta/PointEntitySuper;
.super Ljava/lang/Object;


# static fields
.field private static b:J

.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->b:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()J
    .registers 5

    const-class v0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->b:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1b

    if-eqz v2, :cond_34

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_7a

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_82

    :cond_73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_82

    :cond_7a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_82
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto/16 :goto_1b

    :cond_a3
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "motion_before"

    const-string v1, "motion_after"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static captureName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v2, v0, v1

    const/16 v3, 0x60

    if-le v2, v3, :cond_1c

    aget-char v2, v0, v1

    const/16 v3, 0x7b

    if-ge v2, v3, :cond_1c

    aget-char p0, v0, v1

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    aput-char p0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method public static lowFirstChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v2, v0, v1

    const/16 v3, 0x40

    if-le v2, v3, :cond_1c

    aget-char v2, v0, v1

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_1c

    aget-char p0, v0, v1

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    aput-char p0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method public static toURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "UTF-8"

    const-string v1, ""

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    :try_start_7
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public commit()V
    .registers 3

    iput-object p0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/common/mta/PointEntitySuper$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper$1;-><init>(Lcom/sigmob/sdk/common/mta/PointEntitySuper;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/b/c$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public commitTest()V
    .registers 1

    iput-object p0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/Object;

    return-void
.end method

.method public getAaid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAc_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroid_id()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppinfo_switch()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getClientversion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogle_aid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei1()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei2()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation_switch()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getMsa_udid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworktype()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->F()Lcom/sigmob/sdk/common/f/c$a;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getSdkversion()Ljava/lang/String;
    .registers 2

    const-string v0, "2.24.0"

    return-object v0
.end method

.method public getSeq_id()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_category()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVaid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWmsession_id()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public insertToDB(Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->d:Ljava/lang/String;

    const-string v1, "401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/sigmob/sdk/common/a;->b()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getlogBlackList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "black ac type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_4e
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_64

    const-string v1, "options"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_64
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    return-void

    :cond_6f
    new-instance v1, Lcom/sigmob/sdk/common/a/b$b$a;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/a/b$b$a;-><init>()V

    const-string v2, "point"

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/a/b$b$a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "item"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/a/b$b$a;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a/b$b$a;->a()Lcom/sigmob/sdk/common/a/b$b;

    move-result-object v1

    new-instance v3, Lcom/sigmob/sdk/common/mta/PointEntitySuper$3;

    invoke-direct {v3, p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySuper$3;-><init>(Lcom/sigmob/sdk/common/mta/PointEntitySuper;Lcom/sigmob/sdk/common/a/c$a;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/sigmob/sdk/common/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/sigmob/sdk/common/a/b$b;Lcom/sigmob/sdk/common/a/c$a;)V
    :try_end_9e
    .catchall {:try_start_0 .. :try_end_9e} :catchall_9f

    goto :goto_a7

    :catchall_9f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_a7
    return-void
.end method

.method public sendServe()V
    .registers 5

    iput-object p0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sigandroid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_uniq_key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&_batch_value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/mta/BuriedPointManager;->deflateAndBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/common/mta/PointEntitySuper$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper$2;-><init>(Lcom/sigmob/sdk/common/mta/PointEntitySuper;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/e/a;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/e/a$a;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_6e} :catch_6f

    goto :goto_77

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_77
    :goto_77
    return-void
.end method

.method public setAc_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->d:Ljava/lang/String;

    return-void
.end method

.method public setAppinfo_switch(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->e:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->h:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->j:Ljava/lang/String;

    return-void
.end method

.method public setLocation_switch(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->f:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->n:Ljava/lang/String;

    return-void
.end method

.method public setMsa_udid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->g:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->k:Ljava/util/Map;

    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->m:Ljava/lang/String;

    return-void
.end method

.method public setSub_category(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->i:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->l:Ljava/lang/String;

    return-void
.end method

.method public testJsonString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v1, "options"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_16
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public testPointEntityClass()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/n;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getLogs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :try_start_3b
    iget-object v3, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;->lowFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_17

    const-string v5, "content_length"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    const-string v4, "content-length"

    :goto_5d
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_61
    const-string v5, "content_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    const-string v4, "content-type"

    goto :goto_5d

    :cond_6c
    const-string v5, "ac_type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    const-string v4, "_ac_type"

    goto :goto_5d

    :cond_77
    const-string v5, "user_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    const-string v4, "_user_id"

    goto :goto_5d

    :cond_82
    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_88
    .catchall {:try_start_3b .. :try_end_88} :catchall_8b

    if-nez v5, :cond_17

    goto :goto_5d

    :catchall_8b
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_b0
    return-object v1
.end method
