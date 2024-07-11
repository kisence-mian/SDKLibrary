.class public final Lcom/tapjoy/internal/ga;
.super Lcom/tapjoy/internal/gl;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/tapjoy/internal/gl$a;

.field private final d:Lcom/tapjoy/internal/gl$a;

.field private final e:Lcom/tapjoy/internal/gl$a;

.field private final f:Lcom/tapjoy/internal/gl$a;

.field private final g:Lcom/tapjoy/internal/gl$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ga;->a:Ljava/util/Map;

    .line 41
    return-void
.end method

.method constructor <init>()V
    .registers 7

    .line 49
    invoke-direct {p0}, Lcom/tapjoy/internal/gl;-><init>()V

    .line 51
    const-string v0, "BuildConfig"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/gl$a;

    .line 52
    const-string v1, "ServerFinal"

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ga;->d:Lcom/tapjoy/internal/gl$a;

    .line 53
    const-string v1, "AppRuntime"

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ga;->e:Lcom/tapjoy/internal/gl$a;

    .line 54
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;

    .line 55
    const-string v1, "ConnectFlags"

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ga;->f:Lcom/tapjoy/internal/gl$a;

    .line 56
    const-string v1, "ServerDefault"

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ga;->g:Lcom/tapjoy/internal/gl$a;

    .line 57
    const-string v1, "SDKDefault"

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a;

    move-result-object v1

    .line 59
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_55

    .line 61
    nop

    .line 62
    :try_start_41
    invoke-static {v2}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4b} :catch_4c

    .line 65
    goto :goto_55

    .line 63
    :catch_4c
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/Error;

    const-string v2, "BuildConfig.TJC_CONFIGURATION malformed"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :cond_55
    :goto_55
    nop

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1079
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "placement_request_content_retry_timeout"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Number;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 1081
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1080
    const-string v3, "placement_request_content_retry_backoff"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    nop

    .line 68
    iput-object v0, v1, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Hashtable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    sget-object v2, Lcom/tapjoy/internal/ga;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    if-nez v2, :cond_2d

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    :cond_2d
    iget-object v3, p0, Lcom/tapjoy/internal/ga;->e:Lcom/tapjoy/internal/gl$a;

    iget-object v3, v3, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    goto :goto_d

    .line 115
    :cond_3c
    iget-object p1, p0, Lcom/tapjoy/internal/ga;->f:Lcom/tapjoy/internal/gl$a;

    iput-object v0, p1, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;

    .line 116
    invoke-virtual {p0}, Lcom/tapjoy/internal/ga;->setChanged()V

    .line 117
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 4
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    nop

    .line 91
    nop

    .line 92
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 93
    const-string v0, "final"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 94
    const-string v1, "default"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_17

    .line 92
    :cond_16
    move-object p1, v0

    .line 97
    :goto_17
    iget-object v1, p0, Lcom/tapjoy/internal/ga;->d:Lcom/tapjoy/internal/gl$a;

    iput-object v0, v1, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->g:Lcom/tapjoy/internal/gl$a;

    iput-object p1, v0, Lcom/tapjoy/internal/gl$a;->b:Ljava/util/Map;

    .line 99
    invoke-virtual {p0}, Lcom/tapjoy/internal/ga;->setChanged()V

    .line 100
    return-void
.end method
