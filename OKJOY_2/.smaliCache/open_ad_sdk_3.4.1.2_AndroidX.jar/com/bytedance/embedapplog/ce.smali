.class public final Lcom/bytedance/embedapplog/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static d:Lcom/bytedance/embedapplog/IOaidObserver;

.field private static j:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private e:Lcom/bytedance/embedapplog/cf;

.field private f:Z

.field private g:Lcom/bytedance/embedapplog/ci;

.field private final h:Landroid/content/Context;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field private l:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embedapplog/ce;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ce;->b:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embedapplog/ce;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/ce;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    iput-object p1, p0, Lcom/bytedance/embedapplog/ce;->h:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/bytedance/embedapplog/cg;->a(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/ce;->e:Lcom/bytedance/embedapplog/cf;

    .line 49
    if-eqz v0, :cond_23

    .line 50
    invoke-interface {v0, p1}, Lcom/bytedance/embedapplog/cf;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/ce;->f:Z

    goto :goto_25

    .line 52
    :cond_23
    iput-boolean v1, p0, Lcom/bytedance/embedapplog/ce;->f:Z

    .line 54
    :goto_25
    new-instance v0, Lcom/bytedance/embedapplog/ci;

    invoke-direct {v0, p1}, Lcom/bytedance/embedapplog/ci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/ce;->g:Lcom/bytedance/embedapplog/ci;

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 191
    nop

    .line 192
    nop

    .line 193
    iget-object v0, p0, Lcom/bytedance/embedapplog/ce;->e:Lcom/bytedance/embedapplog/cf;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 194
    invoke-interface {v0, p1}, Lcom/bytedance/embedapplog/cf;->b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;

    move-result-object p1

    .line 195
    if-eqz p1, :cond_24

    .line 196
    iget-object v1, p1, Lcom/bytedance/embedapplog/cf$a;->b:Ljava/lang/String;

    .line 197
    iget-boolean v0, p1, Lcom/bytedance/embedapplog/cf$a;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 198
    instance-of v2, p1, Lcom/bytedance/embedapplog/bz$a;

    if-eqz v2, :cond_25

    .line 199
    check-cast p1, Lcom/bytedance/embedapplog/bz$a;

    iget-wide v2, p1, Lcom/bytedance/embedapplog/bz$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/ce;->l:Ljava/lang/Long;

    goto :goto_25

    .line 203
    :cond_24
    move-object v0, v1

    :cond_25
    :goto_25
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static a(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V
    .registers 2

    .line 93
    if-eqz p0, :cond_9

    .line 94
    sget-object v0, Lcom/bytedance/embedapplog/ce;->d:Lcom/bytedance/embedapplog/IOaidObserver;

    .line 95
    if-eqz v0, :cond_9

    .line 96
    invoke-interface {v0, p0}, Lcom/bytedance/embedapplog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    .line 99
    :cond_9
    return-void
.end method

.method static a(Lcom/bytedance/embedapplog/IOaidObserver;)V
    .registers 2

    .line 86
    sput-object p0, Lcom/bytedance/embedapplog/ce;->d:Lcom/bytedance/embedapplog/IOaidObserver;

    .line 87
    sget-object p0, Lcom/bytedance/embedapplog/ce;->j:Ljava/lang/String;

    if-eqz p0, :cond_10

    .line 88
    new-instance p0, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;

    sget-object v0, Lcom/bytedance/embedapplog/ce;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/ce;->a(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    .line 90
    :cond_10
    return-void
.end method

.method static synthetic a(Lcom/bytedance/embedapplog/ce;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/bytedance/embedapplog/ce;->b()V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .registers 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bytedance/embedapplog/by;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 112
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 113
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_7
    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p2, :cond_10

    .line 104
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_b} :catch_c

    .line 107
    goto :goto_10

    .line 105
    :catch_c
    move-exception p0

    .line 106
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 109
    :cond_10
    :goto_10
    return-void
.end method

.method private b()V
    .registers 13

    .line 139
    sget-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v1, "Oaid#initOaid"

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/embedapplog/ce;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    const-string v1, "Oaid#initOaid exec"

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/bytedance/embedapplog/ce;->g:Lcom/bytedance/embedapplog/ci;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/ci;->a()Lcom/bytedance/embedapplog/ch;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oaid#initOaid fetch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v1, :cond_39

    .line 147
    iget-object v2, v1, Lcom/bytedance/embedapplog/ch;->a:Ljava/lang/String;

    sput-object v2, Lcom/bytedance/embedapplog/ce;->j:Ljava/lang/String;

    .line 148
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/ch;->a()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/embedapplog/ce;->k:Ljava/util/Map;

    .line 150
    :cond_39
    nop

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 152
    iget-object v4, p0, Lcom/bytedance/embedapplog/ce;->h:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/bytedance/embedapplog/ce;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v4

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 154
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_97

    .line 155
    nop

    .line 156
    const/4 v2, -0x1

    .line 157
    const/4 v7, 0x1

    if-eqz v1, :cond_5d

    .line 158
    iget-object v3, v1, Lcom/bytedance/embedapplog/ch;->b:Ljava/lang/String;

    .line 159
    iget-object v1, v1, Lcom/bytedance/embedapplog/ch;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 161
    :cond_5d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 162
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    :cond_6b
    if-gtz v2, :cond_6e

    .line 165
    goto :goto_6f

    .line 164
    :cond_6e
    move v7, v2

    .line 167
    :goto_6f
    new-instance v9, Lcom/bytedance/embedapplog/ch;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/embedapplog/ce;->l:Ljava/lang/Long;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/embedapplog/ch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 169
    iget-object v1, p0, Lcom/bytedance/embedapplog/ce;->g:Lcom/bytedance/embedapplog/ci;

    invoke-virtual {v1, v9}, Lcom/bytedance/embedapplog/ci;->a(Lcom/bytedance/embedapplog/ch;)V

    move-object v3, v9

    .line 171
    :cond_97
    if-eqz v3, :cond_a3

    .line 172
    iget-object v1, v3, Lcom/bytedance/embedapplog/ch;->a:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/embedapplog/ce;->j:Ljava/lang/String;

    .line 173
    invoke-virtual {v3}, Lcom/bytedance/embedapplog/ch;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/embedapplog/ce;->k:Ljava/util/Map;

    .line 175
    :cond_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oaid#initOaid oaidModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_7 .. :try_end_b9} :catchall_ca

    .line 177
    iget-object v0, p0, Lcom/bytedance/embedapplog/ce;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    new-instance v0, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;

    sget-object v1, Lcom/bytedance/embedapplog/ce;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/ce;->a(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    .line 179
    nop

    .line 180
    return-void

    .line 177
    :catchall_ca
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/ce;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    new-instance v1, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;

    sget-object v2, Lcom/bytedance/embedapplog/ce;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/embedapplog/ce;->a(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    throw v0
.end method


# virtual methods
.method public a(J)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/ce;->f:Z

    if-nez v0, :cond_6

    .line 61
    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ce;->a()V

    .line 64
    sget-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oaid#getOaid timeoutMills="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/bytedance/embedapplog/ce;->k:Ljava/util/Map;

    if-nez v1, :cond_76

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 67
    const/4 v3, 0x0

    .line 69
    :try_start_2a
    iget-object v4, p0, Lcom/bytedance/embedapplog/ce;->c:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Oaid#getOaid locked="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_5d} :catch_62
    .catchall {:try_start_2a .. :try_end_5d} :catchall_60

    .line 75
    if-eqz v3, :cond_76

    .line 76
    goto :goto_68

    .line 75
    :catchall_60
    move-exception p1

    goto :goto_6e

    .line 72
    :catch_62
    move-exception p1

    .line 73
    :try_start_63
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .line 75
    if-eqz v3, :cond_76

    .line 76
    :goto_68
    iget-object p1, p0, Lcom/bytedance/embedapplog/ce;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_76

    .line 75
    :goto_6e
    if-eqz v3, :cond_75

    .line 76
    iget-object p2, p0, Lcom/bytedance/embedapplog/ce;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_75
    throw p1

    .line 80
    :cond_76
    :goto_76
    sget-object p1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Oaid#getOaid return apiMap="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/embedapplog/ce;->k:Ljava/util/Map;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/embedapplog/bx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/bytedance/embedapplog/ce;->k:Ljava/util/Map;

    return-object p1
.end method

.method public a()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/bytedance/embedapplog/ce;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 129
    new-instance v0, Lcom/bytedance/embedapplog/ce$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/ce$1;-><init>(Lcom/bytedance/embedapplog/ce;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/ce;->a(Ljava/lang/Runnable;)V

    .line 136
    :cond_12
    return-void
.end method
