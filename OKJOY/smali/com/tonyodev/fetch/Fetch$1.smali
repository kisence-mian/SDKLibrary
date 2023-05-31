.class final Lcom/tonyodev/fetch/Fetch$1;
.super Ljava/lang/Object;
.source "Fetch.java"

# interfaces
.implements Lcom/tonyodev/fetch/FetchCallRunnable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/tonyodev/fetch/request/Request;)V
    .registers 3
    .param p1, "request"    # Lcom/tonyodev/fetch/request/Request;

    .prologue
    .line 161
    # getter for: Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {}, Lcom/tonyodev/fetch/Fetch;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method
