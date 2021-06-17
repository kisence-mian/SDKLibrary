.class Lcom/facebook/login/LoginManager$LoginLoggerHolder;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginLoggerHolder"
.end annotation


# static fields
.field private static logger:Lcom/facebook/login/LoginLogger;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 904
    invoke-static {p0}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    monitor-enter v0

    .line 908
    if-eqz p0, :cond_7

    move-object v1, p0

    goto :goto_b

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_24

    :goto_b
    move-object p0, v1

    .line 909
    if-nez p0, :cond_11

    .line 910
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 912
    :cond_11
    :try_start_11
    sget-object v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    if-nez v1, :cond_20

    .line 913
    new-instance v1, Lcom/facebook/login/LoginLogger;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    .line 915
    :cond_20
    sget-object v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object v1

    .line 907
    .end local p0    # "context":Landroid/content/Context;
    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method
