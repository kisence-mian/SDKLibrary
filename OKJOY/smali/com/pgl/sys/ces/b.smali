.class public Lcom/pgl/sys/ces/b;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/pgl/sys/ces/out/ISdkLite;


# static fields
.field public static g:Z

.field public static h:Z

.field private static volatile i:Lcom/pgl/sys/ces/b;

.field private static j:Z

.field private static l:Z

.field private static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/pgl/sys/ces/b;->i:Lcom/pgl/sys/ces/b;

    sput-boolean v1, Lcom/pgl/sys/ces/b;->j:Z

    sput-boolean v1, Lcom/pgl/sys/ces/b;->g:Z

    sput-boolean v1, Lcom/pgl/sys/ces/b;->h:Z

    sput-boolean v1, Lcom/pgl/sys/ces/b;->l:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/pgl/sys/ces/b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/pgl/sys/ces/b;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/pgl/sys/ces/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/pgl/sys/ces/b;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/pgl/sys/ces/b;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/pgl/sys/ces/b;->k:Z

    const-string v0, "CZL-00"

    invoke-virtual {p0, v0}, Lcom/pgl/sys/ces/b;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/pgl/sys/ces/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/pgl/sys/ces/b;
    .registers 1

    sget-object v0, Lcom/pgl/sys/ces/b;->i:Lcom/pgl/sys/ces/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/b;
    .registers 5

    sget-object v0, Lcom/pgl/sys/ces/b;->i:Lcom/pgl/sys/ces/b;

    if-nez v0, :cond_2d

    const-class v1, Lcom/pgl/sys/ces/b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/pgl/sys/ces/b;->i:Lcom/pgl/sys/ces/b;

    if-nez v0, :cond_21

    if-nez p0, :cond_15

    invoke-static {}, Lcom/pgl/sys/ces/a/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_15
    if-nez p0, :cond_1a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, Lcom/pgl/sys/ces/b;

    invoke-direct {v0, p0, p1}, Lcom/pgl/sys/ces/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/pgl/sys/ces/b;->i:Lcom/pgl/sys/ces/b;

    :cond_21
    invoke-static {p2}, Lcom/pgl/a/a/a;->a(I)V

    const-string v0, "nms"

    invoke-static {p0, v0}, Lcom/pgl/a/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_30

    :cond_2d
    sget-object v0, Lcom/pgl/sys/ces/b;->i:Lcom/pgl/sys/ces/b;

    goto :goto_19

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 6

    const-class v1, Lcom/pgl/sys/ces/b;

    monitor-enter v1

    if-eqz p0, :cond_df

    :try_start_5
    sget-boolean v0, Lcom/pgl/sys/ces/b;->j:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_e1

    if-nez v0, :cond_df

    const/16 v0, 0x65

    const/4 v2, 0x0

    :try_start_c
    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3fc

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pgl/sys/ces/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x69

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/pgl/sys/ces/a/a;->b(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6a

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/pgl/sys/ces/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6b

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/pgl/sys/ces/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6c

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/pgl/sys/ces/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6d

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pgl/sys/ces/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6e

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pgl/sys/ces/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pgl/sys/ces/b;->j:Z
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_df} :catch_e4
    .catchall {:try_start_c .. :try_end_df} :catchall_e1

    :cond_df
    :goto_df
    :try_start_df
    monitor-exit v1

    return-void

    :catchall_e1
    move-exception v0

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_e1

    throw v0

    :catch_e4
    move-exception v0

    goto :goto_df
.end method

.method static synthetic a(Lcom/pgl/sys/ces/b;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pgl/sys/ces/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CZL-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pgl/sys/ces/b$1;

    invoke-direct {v1, p0, v0}, Lcom/pgl/sys/ces/b$1;-><init>(Lcom/pgl/sys/ces/b;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pgl/sys/ces/b$1;->start()V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/pgl/sys/ces/b;->l:Z

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    iget-object v0, v0, Lcom/pgl/sys/ces/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    iget-object v0, v0, Lcom/pgl/sys/ces/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/pgl/sys/ces/b;->a()Lcom/pgl/sys/ces/b;

    move-result-object v0

    iget-object v0, v0, Lcom/pgl/sys/ces/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pgl/sys/ces/b;->k:Z

    return v0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/pgl/sys/ces/b;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pgl/sys/ces/b$2;

    invoke-direct {v2, p0}, Lcom/pgl/sys/ces/b$2;-><init>(Lcom/pgl/sys/ces/b;)V

    invoke-static {v0, v1, v2}, Lcom/pgl/sys/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/pgl/sys/a/a/a;)V

    return-void
.end method

.method private g()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_1a

    move-result v0

    if-eqz v0, :cond_1b

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :catch_1a
    move-exception v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public SetRegionType(I)V
    .registers 2

    invoke-static {p1}, Lcom/pgl/a/a/a;->a(I)V

    return-void
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v2, 0x0

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/16 v0, 0x79

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_17
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_20

    invoke-static {}, Lcom/pgl/sys/ces/a/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_20
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_2b
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_36

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_36
    const/16 v0, 0x80

    if-ne p1, v0, :cond_41

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_41
    const/16 v0, 0x78

    if-ne p1, v0, :cond_4a

    invoke-static {}, Lcom/pgl/sys/ces/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_4a
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_55

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_55
    const/16 v0, 0x82

    if-ne p1, v0, :cond_60

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_60
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_6b

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_6b
    const/16 v0, 0x81

    if-ne p1, v0, :cond_76

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_76
    const/16 v0, 0x83

    if-ne p1, v0, :cond_7f

    invoke-static {}, Lcom/pgl/sys/a/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7f
    const/16 v0, 0x84

    if-ne p1, v0, :cond_8a

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_b

    :cond_8a
    const/16 v0, 0x86

    if-ne p1, v0, :cond_9a

    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/b/a;->a(Landroid/content/Context;)Lcom/pgl/sys/ces/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/sys/ces/b/a;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_9a
    const/16 v0, 0x85

    if-ne p1, v0, :cond_ee

    :try_start_9e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/pgl/sys/ces/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_ca} :catch_cb

    goto :goto_ad

    :catch_cb
    move-exception v0

    move-object v0, v2

    :goto_cd
    if-nez v0, :cond_e6

    const-string v0, "{}"

    goto/16 :goto_b

    :cond_d3
    :try_start_d3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ad

    :cond_e1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_e4} :catch_cb

    move-result-object v0

    goto :goto_cd

    :cond_e6
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_ee
    const/16 v0, 0x87

    if-ne p1, v0, :cond_104

    invoke-static {}, Lcom/pgl/sys/ces/c;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_fc

    const-string v0, "0000000000000000000000000000000000000000"

    goto/16 :goto_b

    :cond_fc
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_104
    const/16 v0, 0x88

    if-ne p1, v0, :cond_129

    :try_start_108
    iget-object v0, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_122} :catch_125

    move-result-object v0

    goto/16 :goto_b

    :catch_125
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_129
    move-object v0, v2

    goto/16 :goto_b
.end method

.method public debugEntry(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const v0, 0xfa300

    invoke-static {v0, v1, v1}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onEvent()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/pgl/sys/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pullSg()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/pgl/sys/ces/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pullVer(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/pgl/sys/ces/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportNow(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "CZL-LRT"

    new-instance v1, Lcom/pgl/sys/ces/b$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/pgl/sys/ces/b$3;-><init>(Lcom/pgl/sys/ces/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pgl/sys/ces/b$3;->start()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public run()V
    .registers 7

    const-wide/32 v4, 0xea60

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pgl/sys/ces/b;->k:Z

    const-wide/32 v0, 0x6ddd00

    invoke-static {v4, v5}, Lcom/pgl/a/b/f;->a(J)V

    const-string v2, "CZL-L1st"

    invoke-virtual {p0, v2}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    :cond_11
    :goto_11
    invoke-static {v0, v1}, Lcom/pgl/a/b/f;->a(J)V

    invoke-direct {p0}, Lcom/pgl/sys/ces/b;->g()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "CZL-LLP"

    invoke-virtual {p0, v2}, Lcom/pgl/sys/ces/b;->reportNow(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/pgl/a/b/f;->a(J)V

    const-string v2, "CZL-LSP"

    invoke-direct {p0, v2}, Lcom/pgl/sys/ces/b;->a(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public setCustomInfo(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    sput-object p1, Lcom/pgl/sys/ces/b;->m:Ljava/util/Map;

    :cond_4
    return-void
.end method

.method public setEfficientDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pgl/sys/ces/b;->a:Z

    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    iput-object p1, p0, Lcom/pgl/sys/ces/b;->e:Ljava/lang/String;

    const/16 v0, 0x67

    invoke-static {v0, v1, p1}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    iput-object p2, p0, Lcom/pgl/sys/ces/b;->f:Ljava/lang/String;

    const/16 v0, 0x68

    invoke-static {v0, v1, p2}, Lcom/pgl/sys/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-string v0, "SP1"

    invoke-direct {p0, v0}, Lcom/pgl/sys/ces/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pgl/sys/ces/b;->f()V

    invoke-virtual {p0}, Lcom/pgl/sys/ces/b;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/pgl/sys/ces/b;->e()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lcom/pgl/sys/ces/b;->start()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    goto :goto_36
.end method
