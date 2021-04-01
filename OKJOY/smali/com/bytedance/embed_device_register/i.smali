.class final Lcom/bytedance/embed_device_register/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embed_device_register/i$a;,
        Lcom/bytedance/embed_device_register/i$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/bytedance/embed_device_register/i;


# instance fields
.field private c:Lcom/bytedance/embed_device_register/i$b;

.field private d:Lcom/bytedance/embed_device_register/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embed_device_register/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 6

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/bytedance/embed_device_register/i$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v1}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 53
    new-instance v2, Lcom/bytedance/embed_device_register/i$1;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/bytedance/embed_device_register/i$1;-><init>(Lcom/bytedance/embed_device_register/i;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;)V

    .line 104
    invoke-static {v2}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/Runnable;)V

    .line 106
    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/i$b;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i;->c:Lcom/bytedance/embed_device_register/i$b;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/i;Lcom/bytedance/embed_device_register/i$b;)Lcom/bytedance/embed_device_register/i$b;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/bytedance/embed_device_register/i;->c:Lcom/bytedance/embed_device_register/i$b;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 34
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/embed_device_register/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/i;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i;

    .line 36
    return-void
.end method

.method static synthetic b(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/g$b;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i;->d:Lcom/bytedance/embed_device_register/g$b;

    return-object v0
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i;
    .registers 4

    .prologue
    .line 39
    sget-object v0, Lcom/bytedance/embed_device_register/i;->b:Lcom/bytedance/embed_device_register/i;

    if-nez v0, :cond_13

    .line 40
    const-class v1, Lcom/bytedance/embed_device_register/i;

    monitor-enter v1

    .line 41
    :try_start_7
    sget-object v0, Lcom/bytedance/embed_device_register/i;->b:Lcom/bytedance/embed_device_register/i;

    if-nez v0, :cond_12

    .line 42
    new-instance v0, Lcom/bytedance/embed_device_register/i;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embed_device_register/i;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/bytedance/embed_device_register/i;->b:Lcom/bytedance/embed_device_register/i;

    .line 44
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 46
    :cond_13
    sget-object v0, Lcom/bytedance/embed_device_register/i;->b:Lcom/bytedance/embed_device_register/i;

    return-object v0

    .line 44
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/bytedance/embed_device_register/i;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Lcom/bytedance/embed_device_register/i$b;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i;->c:Lcom/bytedance/embed_device_register/i$b;

    return-object v0
.end method

.method a(Lcom/bytedance/embed_device_register/g$b;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/bytedance/embed_device_register/i;->d:Lcom/bytedance/embed_device_register/g$b;

    .line 110
    return-void
.end method
