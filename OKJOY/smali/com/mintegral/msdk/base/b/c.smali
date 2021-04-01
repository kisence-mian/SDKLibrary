.class public Lcom/mintegral/msdk/base/b/c;
.super Lcom/mintegral/msdk/base/b/a;
.source "CTtimeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/mintegral/msdk/base/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 18
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/c;
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/mintegral/msdk/base/b/c;->c:Lcom/mintegral/msdk/base/b/c;

    if-nez v0, :cond_13

    .line 22
    const-class v1, Lcom/mintegral/msdk/base/b/c;

    monitor-enter v1

    .line 23
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/c;->c:Lcom/mintegral/msdk/base/b/c;

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Lcom/mintegral/msdk/base/b/c;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/c;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/c;->c:Lcom/mintegral/msdk/base/b/c;

    .line 26
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 28
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/c;->c:Lcom/mintegral/msdk/base/b/c;

    return-object v0

    .line 26
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Long;)V
    .registers 8

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "t_time<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 91
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "c_t_time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2e
    .catchall {:try_start_1 .. :try_end_2c} :catchall_33

    .line 97
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 95
    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_2c

    .line 88
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
