.class public Lcom/mintegral/msdk/base/common/e/c/a;
.super Ljava/lang/Object;
.source "LogFileController.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/mintegral/msdk/base/common/e/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/mintegral/msdk/base/common/e/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/e/c/a;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/common/e/c/a;->b:Lcom/mintegral/msdk/base/common/e/c/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/base/common/e/c/a;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/mintegral/msdk/base/common/e/c/a;->b:Lcom/mintegral/msdk/base/common/e/c/a;

    if-nez v0, :cond_13

    .line 30
    const-class v1, Lcom/mintegral/msdk/base/common/e/c/a;

    monitor-enter v1

    .line 31
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/common/e/c/a;->b:Lcom/mintegral/msdk/base/common/e/c/a;

    if-nez v0, :cond_12

    .line 32
    new-instance v0, Lcom/mintegral/msdk/base/common/e/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/common/e/c/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/common/e/c/a;->b:Lcom/mintegral/msdk/base/common/e/c/a;

    .line 34
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 36
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/common/e/c/a;->b:Lcom/mintegral/msdk/base/common/e/c/a;

    return-object v0

    .line 34
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_4

    .line 55
    :cond_3
    :goto_3
    return-object v0

    .line 51
    :cond_4
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/r;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/r;->c()I

    move-result v1

    if-lez v1, :cond_3

    .line 52
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/r;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/r;->e()Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method
