.class Lcom/tonyodev/fetch/Fetch$5;
.super Landroid/content/BroadcastReceiver;
.source "Fetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/Fetch;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/Fetch;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tonyodev/fetch/Fetch;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/tonyodev/fetch/Fetch$5;->this$0:Lcom/tonyodev/fetch/Fetch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 994
    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->processPendingRequests(Landroid/content/Context;)V

    .line 995
    return-void
.end method
