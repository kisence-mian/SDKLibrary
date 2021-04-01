.class Lcom/tonyodev/fetch/FetchCallRunnable$2;
.super Ljava/lang/Object;
.source "FetchCallRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchCallRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchCallRunnable;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchCallRunnable;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/tonyodev/fetch/FetchCallRunnable;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchCallRunnable$2;->this$0:Lcom/tonyodev/fetch/FetchCallRunnable;

    iput p2, p0, Lcom/tonyodev/fetch/FetchCallRunnable$2;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable$2;->this$0:Lcom/tonyodev/fetch/FetchCallRunnable;

    # getter for: Lcom/tonyodev/fetch/FetchCallRunnable;->fetchCall:Lcom/tonyodev/fetch/callback/FetchCall;
    invoke-static {v0}, Lcom/tonyodev/fetch/FetchCallRunnable;->access$200(Lcom/tonyodev/fetch/FetchCallRunnable;)Lcom/tonyodev/fetch/callback/FetchCall;

    move-result-object v0

    iget v1, p0, Lcom/tonyodev/fetch/FetchCallRunnable$2;->val$error:I

    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable$2;->this$0:Lcom/tonyodev/fetch/FetchCallRunnable;

    # getter for: Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;
    invoke-static {v2}, Lcom/tonyodev/fetch/FetchCallRunnable;->access$100(Lcom/tonyodev/fetch/FetchCallRunnable;)Lcom/tonyodev/fetch/request/Request;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tonyodev/fetch/callback/FetchCall;->onError(ILcom/tonyodev/fetch/request/Request;)V

    .line 112
    return-void
.end method
