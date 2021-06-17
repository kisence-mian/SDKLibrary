.class public Lcom/appsflyer/internal/bq;
.super Lcom/appsflyer/internal/bw;
.source ""


# instance fields
.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 38
    const-string v0, "google"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/bw;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    .line 39
    return-void
.end method

.method private static AFKeystoreWrapper(Landroid/content/Context;)Z
    .registers 4

    .line 43
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    .line 44
    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3703
    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    .line 45
    if-lez v0, :cond_16

    .line 46
    const-string p0, "Install referrer will not load, the counter > 1, "

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 47
    return v2

    .line 49
    :cond_16
    const-string v0, "com.android.installreferrer.api.InstallReferrerClient"

    .line 51
    :try_start_18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    const-string v1, "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-static {p0, v1}, Lcom/appsflyer/internal/ac;->values(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 53
    const-string p0, "Install referrer is allowed"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_28} :catch_40
    .catchall {:try_start_18 .. :try_end_28} :catchall_31

    .line 54
    const/4 p0, 0x1

    return p0

    .line 62
    :cond_2a
    nop

    .line 63
    const-string p0, "Install referrer is not allowed"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 64
    return v2

    .line 59
    :catchall_31
    move-exception p0

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "An error occurred while trying to verify manifest : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return v2

    .line 56
    :catch_40
    move-exception p0

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 58
    return v2
.end method


# virtual methods
.method public final AFInAppEventType(Landroid/content/Context;)V
    .registers 4

    .line 68
    invoke-static {p1}, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 69
    :cond_7
    invoke-virtual {p0}, Lcom/appsflyer/internal/bw;->values()V

    .line 71
    :try_start_a
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    .line 72
    const-string v1, "Connecting to Install Referrer Library..."

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/appsflyer/internal/bq$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/appsflyer/internal/bq$2;-><init>(Lcom/appsflyer/internal/bq;Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_20

    .line 155
    return-void

    .line 153
    :catchall_20
    move-exception p1

    .line 154
    const-string v0, "referrerClient -> startConnection"

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    return-void
.end method
