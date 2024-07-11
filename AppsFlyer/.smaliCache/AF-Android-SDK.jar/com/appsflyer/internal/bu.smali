.class public final Lcom/appsflyer/internal/bu;
.super Lcom/appsflyer/internal/bo;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 35
    const-string v0, "samsung"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/bo;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Landroid/content/Context;)V
    .registers 6

    .line 40
    new-instance v0, Lcom/appsflyer/internal/bu$3;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901"

    aput-object v3, v1, v2

    const-string v2, "com.sec.android.app.samsungapps.referrer"

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/appsflyer/internal/bu$3;-><init>(Lcom/appsflyer/internal/bu;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/internal/bu;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/av;)V

    .line 112
    return-void
.end method
