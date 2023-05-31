.class Lcom/taptap/sdk/h;
.super Ljava/lang/Object;
.source "TapTapSdk.java"


# static fields
.field public static volatile a:Z = false

.field public static final b:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/taptap/sdk/h;

    monitor-enter v0

    .line 27
    :try_start_3
    invoke-static {}, Lcom/taptap/sdk/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-static {v1, v2}, Lcom/taptap/sdk/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/taptap/sdk/e;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/taptap/sdk/h;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_4
    invoke-static {v1}, Lcom/taptap/sdk/h;->b(Lcom/taptap/sdk/LoginSdkConfig;)Lcom/taptap/sdk/LoginSdkConfig;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/taptap/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/LoginSdkConfig;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    .line 1
    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/LoginSdkConfig;)V
    .registers 6

    const-class v0, Lcom/taptap/sdk/h;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p2}, Lcom/taptap/sdk/h;->b(Lcom/taptap/sdk/LoginSdkConfig;)Lcom/taptap/sdk/LoginSdkConfig;

    move-result-object p2

    const-string v1, "application context"

    .line 3
    invoke-static {p0, v1}, Lcom/taptap/sdk/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1}, Lcom/taptap/sdk/m;->a(Landroid/content/Context;Z)V

    .line 5
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/taptap/sdk/m;->b(Landroid/content/Context;Z)V

    .line 6
    sget-boolean v2, Lcom/taptap/sdk/h;->a:Z

    if-nez v2, :cond_3a

    .line 7
    sput-boolean v1, Lcom/taptap/sdk/h;->a:Z

    .line 8
    invoke-static {p0}, Lcom/taptap/sdk/i;->a(Landroid/content/Context;)Lcom/taptap/sdk/i;

    .line 9
    invoke-static {p1}, Lcom/taptap/sdk/e;->a(Ljava/lang/String;)V

    .line 10
    iget-object p0, p2, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;

    invoke-static {p0}, Lcom/taptap/sdk/e;->a(Lcom/taptap/sdk/RegionType;)V

    .line 11
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/taptap/sdk/Profile;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v1

    if-eqz p0, :cond_3a

    .line 15
    iget-object p0, p0, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/taptap/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3a

    const/4 p0, 0x0

    .line 17
    invoke-static {p0}, Lcom/taptap/sdk/Profile;->fetchProfileForCurrentAccessToken(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    .line 21
    :cond_3a
    iget-boolean p0, p2, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    sput-boolean p0, Lcom/taptap/sdk/e;->c:Z

    .line 22
    iget-boolean p0, p2, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    sput-boolean p0, Lcom/taptap/sdk/e;->d:Z

    .line 24
    const-class p0, Lcom/taptap/sdk/IscTapLoginService;

    invoke-static {p0}, Lcom/tds/common/isc/IscServiceManager;->register(Ljava/lang/Class;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_49

    monitor-exit v0

    return-void

    .line 1
    :catchall_49
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/taptap/sdk/LoginSdkConfig;)V
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    sput-boolean v0, Lcom/taptap/sdk/e;->c:Z

    .line 26
    iget-boolean p0, p0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    sput-boolean p0, Lcom/taptap/sdk/e;->d:Z

    return-void
.end method

.method private static declared-synchronized b(Lcom/taptap/sdk/LoginSdkConfig;)Lcom/taptap/sdk/LoginSdkConfig;
    .registers 3

    const-class v0, Lcom/taptap/sdk/h;

    monitor-enter v0

    if-nez p0, :cond_13

    .line 1
    :try_start_5
    new-instance p0, Lcom/taptap/sdk/LoginSdkConfig;

    invoke-direct {p0}, Lcom/taptap/sdk/LoginSdkConfig;-><init>()V

    .line 2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 3
    iput-boolean v1, p0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    .line 4
    sget-object v1, Lcom/taptap/sdk/RegionType;->CN:Lcom/taptap/sdk/RegionType;

    iput-object v1, p0, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v0

    return-object p0

    .line 0
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "2.6.0"

    return-object v0
.end method

.method public static declared-synchronized c()Lcom/taptap/sdk/RegionType;
    .registers 2

    const-class v0, Lcom/taptap/sdk/h;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/taptap/sdk/e;->b()Lcom/taptap/sdk/RegionType;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 1
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method
