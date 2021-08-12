.class public Lcom/bytedance/tea/crash/a/f;
.super Ljava/lang/Object;
.source "CrashANRHandler.java"


# static fields
.field private static volatile a:Lcom/bytedance/tea/crash/a/f;


# instance fields
.field private final b:Lcom/bytedance/tea/crash/a/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bytedance/tea/crash/a/c;

    invoke-direct {v0, p1}, Lcom/bytedance/tea/crash/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/f;->b:Lcom/bytedance/tea/crash/a/c;

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/tea/crash/a/f;
    .registers 3

    .line 15
    sget-object v0, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    if-nez v0, :cond_17

    .line 16
    const-class v0, Lcom/bytedance/tea/crash/a/f;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    if-nez v1, :cond_12

    .line 18
    new-instance v1, Lcom/bytedance/tea/crash/a/f;

    invoke-direct {v1, p0}, Lcom/bytedance/tea/crash/a/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    .line 20
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 22
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/f;->b:Lcom/bytedance/tea/crash/a/c;

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/a/c;->a()V

    .line 31
    return-void
.end method
