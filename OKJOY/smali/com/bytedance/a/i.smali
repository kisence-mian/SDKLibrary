.class final Lcom/bytedance/a/i;
.super Lcom/bytedance/a/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/a/i$a;,
        Lcom/bytedance/a/i$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static volatile d:Lcom/bytedance/a/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/a/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/a/i;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/bytedance/a/g$b;-><init>()V

    .line 49
    if-eqz p1, :cond_17

    invoke-virtual {p0, p1}, Lcom/bytedance/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/bytedance/a/i$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/bytedance/a/i$1;-><init>(Lcom/bytedance/a/i;Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 100
    invoke-static {v1}, Lcom/bytedance/a/e;->a(Ljava/lang/Runnable;)V

    .line 102
    :cond_17
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/bytedance/a/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 33
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/a/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p0, p1}, Lcom/bytedance/a/i;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/i;

    .line 35
    return-void
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/i;
    .registers 4

    .prologue
    .line 38
    sget-object v0, Lcom/bytedance/a/i;->d:Lcom/bytedance/a/i;

    if-nez v0, :cond_13

    .line 39
    const-class v1, Lcom/bytedance/a/i;

    monitor-enter v1

    .line 40
    :try_start_7
    sget-object v0, Lcom/bytedance/a/i;->d:Lcom/bytedance/a/i;

    if-nez v0, :cond_12

    .line 41
    new-instance v0, Lcom/bytedance/a/i;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/a/i;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/bytedance/a/i;->d:Lcom/bytedance/a/i;

    .line 43
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 45
    :cond_13
    sget-object v0, Lcom/bytedance/a/i;->d:Lcom/bytedance/a/i;

    return-object v0

    .line 43
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 106
    invoke-static {}, Lcom/bytedance/a/i$a;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/bytedance/a/i$a;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
