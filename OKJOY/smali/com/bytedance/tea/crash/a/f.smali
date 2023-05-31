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
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
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

    .prologue
    .line 15
    sget-object v0, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    if-nez v0, :cond_13

    .line 16
    const-class v1, Lcom/bytedance/tea/crash/a/f;

    monitor-enter v1

    .line 17
    :try_start_7
    sget-object v0, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    if-nez v0, :cond_12

    .line 18
    new-instance v0, Lcom/bytedance/tea/crash/a/f;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    .line 20
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 22
    :cond_13
    sget-object v0, Lcom/bytedance/tea/crash/a/f;->a:Lcom/bytedance/tea/crash/a/f;

    return-object v0

    .line 20
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/f;->b:Lcom/bytedance/tea/crash/a/c;

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/a/c;->a()V

    .line 31
    return-void
.end method
