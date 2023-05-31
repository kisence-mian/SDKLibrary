.class public Lcom/bytedance/a/h;
.super Lcom/bytedance/a/g$b;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/bytedance/a/h;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/a/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/a/h;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 6

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bytedance/a/g$b;-><init>()V

    .line 109
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/a/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0d\u652f\u6301\u7684VIVO\u8bbe\u5907 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 36
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/a/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0, p1}, Lcom/bytedance/a/h;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/h;

    .line 38
    return-void
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/h;
    .registers 4

    .prologue
    .line 41
    sget-object v0, Lcom/bytedance/a/h;->c:Lcom/bytedance/a/h;

    if-nez v0, :cond_13

    .line 42
    const-class v1, Lcom/bytedance/a/h;

    monitor-enter v1

    .line 43
    :try_start_7
    sget-object v0, Lcom/bytedance/a/h;->c:Lcom/bytedance/a/h;

    if-nez v0, :cond_12

    .line 44
    new-instance v0, Lcom/bytedance/a/h;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/a/h;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/bytedance/a/h;->c:Lcom/bytedance/a/h;

    .line 46
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 48
    :cond_13
    sget-object v0, Lcom/bytedance/a/h;->c:Lcom/bytedance/a/h;

    return-object v0

    .line 46
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
    .line 115
    const/4 v0, 0x0

    return v0
.end method
