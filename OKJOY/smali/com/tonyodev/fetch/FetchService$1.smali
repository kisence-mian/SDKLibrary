.class Lcom/tonyodev/fetch/FetchService$1;
.super Ljava/lang/Object;
.source "FetchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$1;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$1;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$000(Lcom/tonyodev/fetch/FetchService;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch/DatabaseHelper;->clean()V

    .line 196
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$1;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$000(Lcom/tonyodev/fetch/FetchService;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch/DatabaseHelper;->verifyOK()V

    .line 197
    return-void
.end method
