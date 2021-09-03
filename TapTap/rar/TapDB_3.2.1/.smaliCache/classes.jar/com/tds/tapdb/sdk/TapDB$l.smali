.class final Lcom/tds/tapdb/sdk/TapDB$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$l;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string v0, "TapTapDIDIntentService"

    const-string v1, "----get taptap did from remote service directly -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$l;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tds/tapdb/sdk/TapDB;->a(Landroid/content/Context;Z)Lcom/tds/tapdb/sdk/TapDB$x;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB$l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB$x;->a(Lcom/tds/tapdb/sdk/TapDB$x;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "service_directly"

    invoke-static {v1, v2, v3}, Lcom/tds/tapdb/sdk/TapDB;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB$l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Lcom/tds/tapdb/sdk/TapDB$x;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
