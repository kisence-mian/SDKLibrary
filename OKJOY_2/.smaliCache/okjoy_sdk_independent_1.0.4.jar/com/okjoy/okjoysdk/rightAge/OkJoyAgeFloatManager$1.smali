.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    check-cast p2, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;

    invoke-virtual {p2}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;->getService()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    move-result-object p2

    # setter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mService:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;
    invoke-static {p1, p2}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->access$202(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;)Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    const/4 v0, 0x0

    # setter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->mService:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;
    invoke-static {p1, v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->access$202(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;)Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    return-void
.end method
