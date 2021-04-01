.class final Lcom/bytedance/embed_device_register/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embed_device_register/g$c;,
        Lcom/bytedance/embed_device_register/g$b;,
        Lcom/bytedance/embed_device_register/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/bytedance/embedapplog/IOaidObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final d:Lcom/bytedance/embed_device_register/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embed_device_register/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    .line 30
    new-instance v0, Lcom/bytedance/embed_device_register/g$1;

    invoke-direct {v0}, Lcom/bytedance/embed_device_register/g$1;-><init>()V

    sput-object v0, Lcom/bytedance/embed_device_register/g;->d:Lcom/bytedance/embed_device_register/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    return-object p0
.end method

.method static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/e;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 41
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/i;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V
    .registers 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/bytedance/embed_device_register/g;->b(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    return-void
.end method

.method static a(Lcom/bytedance/embedapplog/IOaidObserver;)V
    .registers 4
    .param p0    # Lcom/bytedance/embedapplog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .prologue
    .line 63
    sput-object p0, Lcom/bytedance/embed_device_register/g;->c:Lcom/bytedance/embedapplog/IOaidObserver;

    .line 64
    sget-object v0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    if-eqz v0, :cond_18

    .line 65
    new-instance v1, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;

    sget-object v0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/embed_device_register/g;->b(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    .line 67
    :cond_18
    return-void
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/g;->d(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i$b;

    move-result-object v1

    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz v1, :cond_26

    .line 49
    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/i$b;->b()Ljava/util/Map;

    move-result-object v0

    .line 56
    :cond_b
    :goto_b
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oaid#getOaid result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object v0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    .line 58
    return-object v0

    .line 51
    :cond_26
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/g;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e$a;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_b

    .line 53
    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$a;->a()Ljava/util/Map;

    move-result-object v0

    goto :goto_b
.end method

.method private static b(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V
    .registers 2
    .param p0    # Lcom/bytedance/embedapplog/IOaidObserver$Oaid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    if-eqz p0, :cond_9

    .line 71
    sget-object v0, Lcom/bytedance/embed_device_register/g;->c:Lcom/bytedance/embedapplog/IOaidObserver;

    .line 72
    if-eqz v0, :cond_9

    .line 73
    invoke-interface {v0, p0}, Lcom/bytedance/embedapplog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    .line 76
    :cond_9
    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e$a;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 83
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getHuaweiOaid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    invoke-static {p0}, Lcom/bytedance/embed_device_register/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 102
    :cond_25
    :goto_25
    return-object v0

    .line 87
    :cond_26
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/e;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e;->a()Lcom/bytedance/embed_device_register/e$a;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_54

    .line 90
    const-string v0, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getHuaweiOaid: return cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 91
    goto :goto_25

    .line 93
    :cond_54
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 94
    new-instance v3, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v3}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 95
    new-instance v4, Lcom/bytedance/embed_device_register/g$a;

    sget-object v5, Lcom/bytedance/embed_device_register/g;->d:Lcom/bytedance/embed_device_register/f;

    invoke-direct {v4, v3, v1, v5}, Lcom/bytedance/embed_device_register/g$a;-><init>(Lcom/bytedance/embed_device_register/h;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embed_device_register/f;)V

    invoke-virtual {v2, v4}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/g$b;)V

    .line 97
    const-wide/16 v4, 0x64

    :try_start_6b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_70} :catch_9f

    .line 101
    :goto_70
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "getHuaweiOaid: return waited="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz v4, :cond_8f

    iget-object v0, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/embed_device_register/e$a;

    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/e$a;->b()Ljava/lang/String;

    move-result-object v0

    :cond_8f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/embed_device_register/e$a;

    goto :goto_25

    .line 98
    :catch_9f
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_70
.end method

.method private static d(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i$b;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getXmOaid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    invoke-static {}, Lcom/bytedance/embed_device_register/i$a;->a()Z

    move-result v1

    if-nez v1, :cond_26

    .line 157
    :cond_25
    :goto_25
    return-object v0

    .line 141
    :cond_26
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/i;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/i;->a()Lcom/bytedance/embed_device_register/i$b;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_54

    .line 144
    const-string v0, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getXmOaid: return cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/i$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 145
    goto :goto_25

    .line 147
    :cond_54
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 148
    new-instance v3, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v3}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 149
    new-instance v4, Lcom/bytedance/embed_device_register/g$c;

    sget-object v5, Lcom/bytedance/embed_device_register/g;->d:Lcom/bytedance/embed_device_register/f;

    invoke-direct {v4, v3, v1, v5}, Lcom/bytedance/embed_device_register/g$c;-><init>(Lcom/bytedance/embed_device_register/h;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embed_device_register/f;)V

    invoke-virtual {v2, v4}, Lcom/bytedance/embed_device_register/i;->a(Lcom/bytedance/embed_device_register/g$b;)V

    .line 151
    const-wide/16 v4, 0x64

    :try_start_6b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_70} :catch_9f

    .line 155
    :goto_70
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "getHuaweiOaid: return waited="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz v4, :cond_8f

    iget-object v0, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/embed_device_register/i$b;

    .line 156
    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/i$b;->a()Ljava/lang/String;

    move-result-object v0

    :cond_8f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/embed_device_register/i$b;

    goto :goto_25

    .line 152
    :catch_9f
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_70
.end method
