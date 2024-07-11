.class public Lcom/appsflyer/FirebaseMessagingServiceListener;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewToken(Ljava/lang/String;)V
    .registers 4

    .line 9
    new-instance v0, Lcom/appsflyer/internal/az;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/az;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/az;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 10
    return-void
.end method
