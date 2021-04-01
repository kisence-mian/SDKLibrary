.class final Lcom/bytedance/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/a/g$b;,
        Lcom/bytedance/a/g$a;,
        Lcom/bytedance/a/g$c;
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

.field private static c:Lcom/bytedance/applog/IOaidObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final d:Lcom/bytedance/applog/IOaidObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/a/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/a/g;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/a/g;->b:Ljava/util/Map;

    .line 36
    new-instance v0, Lcom/bytedance/a/g$1;

    invoke-direct {v0}, Lcom/bytedance/a/g$1;-><init>()V

    sput-object v0, Lcom/bytedance/a/g;->d:Lcom/bytedance/applog/IOaidObserver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences;I)Ljava/util/Map;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    const-string v0, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bytedance/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getDeviceOaid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p0, :cond_1f

    if-nez p1, :cond_20

    .line 163
    :cond_1f
    :goto_1f
    return-object v1

    .line 141
    :cond_20
    invoke-static {p0, p1, p2}, Lcom/bytedance/a/g$b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;I)Lcom/bytedance/a/g$b;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_1f

    invoke-virtual {v2, p0}, Lcom/bytedance/a/g$b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 145
    iget-object v0, v2, Lcom/bytedance/a/g$b;->b:Lcom/bytedance/a/g$c;

    if-nez v0, :cond_3f

    .line 146
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 147
    new-instance v3, Lcom/bytedance/a/g$c;

    sget-object v4, Lcom/bytedance/a/g;->d:Lcom/bytedance/applog/IOaidObserver;

    invoke-direct {v3, v0, v4}, Lcom/bytedance/a/g$c;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/applog/IOaidObserver;)V

    iput-object v3, v2, Lcom/bytedance/a/g$b;->b:Lcom/bytedance/a/g$c;

    .line 149
    :cond_3f
    iget-object v0, v2, Lcom/bytedance/a/g$b;->a:Lcom/bytedance/a/g$a;

    .line 150
    if-eqz v0, :cond_6a

    .line 151
    const-string v1, "TrackerDr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bytedance/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getDeviceOaid: return cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/a/g$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lcom/bytedance/a/g$a;->a()Ljava/util/Map;

    move-result-object v1

    goto :goto_1f

    .line 155
    :cond_6a
    :try_start_6a
    iget-object v0, v2, Lcom/bytedance/a/g$b;->b:Lcom/bytedance/a/g$c;

    invoke-static {v0}, Lcom/bytedance/a/g$c;->a(Lcom/bytedance/a/g$c;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v4, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_77} :catch_ab

    .line 159
    :goto_77
    const-string v3, "TrackerDr"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bytedance/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "getDeviceOaid: return waited="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v2, Lcom/bytedance/a/g$b;->a:Lcom/bytedance/a/g$a;

    if-eqz v0, :cond_b0

    iget-object v0, v2, Lcom/bytedance/a/g$b;->a:Lcom/bytedance/a/g$a;

    invoke-virtual {v0}, Lcom/bytedance/a/g$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, v2, Lcom/bytedance/a/g$b;->a:Lcom/bytedance/a/g$a;

    if-eqz v0, :cond_1f

    .line 161
    iget-object v0, v2, Lcom/bytedance/a/g$b;->a:Lcom/bytedance/a/g$a;

    invoke-virtual {v0}, Lcom/bytedance/a/g$a;->a()Ljava/util/Map;

    move-result-object v1

    goto/16 :goto_1f

    .line 156
    :catch_ab
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_77

    :cond_b0
    move-object v0, v1

    .line 159
    goto :goto_94
.end method

.method static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/bytedance/a/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 46
    invoke-static {p0, p1}, Lcom/bytedance/a/i;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 47
    invoke-static {p0, p1}, Lcom/bytedance/a/h;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/bytedance/applog/IOaidObserver$Oaid;)V
    .registers 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/bytedance/a/g;->b(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    return-void
.end method

.method static a(Lcom/bytedance/applog/IOaidObserver;)V
    .registers 4
    .param p0    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .prologue
    .line 66
    sput-object p0, Lcom/bytedance/a/g;->c:Lcom/bytedance/applog/IOaidObserver;

    .line 67
    sget-object v0, Lcom/bytedance/a/g;->b:Ljava/util/Map;

    if-eqz v0, :cond_18

    .line 68
    new-instance v1, Lcom/bytedance/applog/IOaidObserver$Oaid;

    sget-object v0, Lcom/bytedance/a/g;->b:Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/a/g;->b(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    .line 70
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
    .line 52
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/bytedance/a/g;->a(Landroid/content/Context;Landroid/content/SharedPreferences;I)Ljava/util/Map;

    move-result-object v0

    .line 53
    if-nez v0, :cond_13

    .line 54
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/bytedance/a/g;->a(Landroid/content/Context;Landroid/content/SharedPreferences;I)Ljava/util/Map;

    move-result-object v0

    .line 55
    if-nez v0, :cond_13

    .line 56
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/bytedance/a/g;->a(Landroid/content/Context;Landroid/content/SharedPreferences;I)Ljava/util/Map;

    move-result-object v0

    .line 59
    :cond_13
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

    invoke-static {v1, v2}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sput-object v0, Lcom/bytedance/a/g;->b:Ljava/util/Map;

    .line 61
    return-object v0
.end method

.method private static b(Lcom/bytedance/applog/IOaidObserver$Oaid;)V
    .registers 2
    .param p0    # Lcom/bytedance/applog/IOaidObserver$Oaid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    if-eqz p0, :cond_9

    .line 74
    sget-object v0, Lcom/bytedance/a/g;->c:Lcom/bytedance/applog/IOaidObserver;

    .line 75
    if-eqz v0, :cond_9

    .line 76
    invoke-interface {v0, p0}, Lcom/bytedance/applog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    .line 79
    :cond_9
    return-void
.end method
