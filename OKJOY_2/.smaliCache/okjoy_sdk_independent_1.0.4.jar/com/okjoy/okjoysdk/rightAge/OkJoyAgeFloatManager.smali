.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$OkJoyHolder;
    }
.end annotation


# instance fields
.field public mService:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

.field public final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;

    invoke-direct {v0, p0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;-><init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;)V

    iput-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;-><init>()V

    return-void
.end method

.method public static synthetic access$202(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;)Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mService:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    return-object p1
.end method

.method public static final getInstance()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;
    .registers 1

    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$OkJoyHolder;->INSTANCE:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$OkJoyHolder;->access$100()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception p1

    :goto_11
    return-void
.end method

.method public getmService()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mService:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    return-object v0
.end method

.method public hide()V
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mService:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->hide()V

    invoke-static {}, Lcom/okjoy/okjoysdk/app/OkJoySdkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->destroy(Landroid/content/Context;)V

    :cond_e
    return-void
.end method

.method public intent(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mService:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->show()V

    :cond_7
    return-void
.end method
