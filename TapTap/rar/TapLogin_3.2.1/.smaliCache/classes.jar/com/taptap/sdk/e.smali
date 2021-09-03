.class public Lcom/taptap/sdk/e;
.super Ljava/lang/Object;
.source "TapLoginInnerConfig.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/taptap/sdk/RegionType;

.field public static c:Z

.field public static d:Z

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/taptap/sdk/RegionType;->CN:Lcom/taptap/sdk/RegionType;

    sput-object v0, Lcom/taptap/sdk/e;->b:Lcom/taptap/sdk/RegionType;

    .line 2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taptap/sdk/e;->c:Z

    .line 3
    sput-boolean v0, Lcom/taptap/sdk/e;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/taptap/sdk/e;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/taptap/sdk/e;->a:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-static {v1, v2}, Lcom/taptap/sdk/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/taptap/sdk/e;->a:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object v1

    .line 1
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/taptap/sdk/RegionType;)V
    .registers 2

    const-class v0, Lcom/taptap/sdk/e;

    monitor-enter v0

    .line 4
    :try_start_3
    sput-object p0, Lcom/taptap/sdk/e;->b:Lcom/taptap/sdk/RegionType;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    .line 4
    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/taptap/sdk/e;

    monitor-enter v0

    .line 1
    :try_start_3
    sput-object p0, Lcom/taptap/sdk/e;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    .line 1
    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Lcom/taptap/sdk/RegionType;
    .registers 2

    const-class v0, Lcom/taptap/sdk/e;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/taptap/sdk/e;->b:Lcom/taptap/sdk/RegionType;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 1
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
