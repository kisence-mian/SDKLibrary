.class final Lcom/tapjoy/TJEventOptimizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 55
    :try_start_0
    new-instance v0, Lcom/tapjoy/TJEventOptimizer;

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJEventOptimizer;-><init>(Landroid/content/Context;B)V

    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->a(Lcom/tapjoy/TJEventOptimizer;)Lcom/tapjoy/TJEventOptimizer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 58
    goto :goto_18

    .line 56
    :catch_c
    move-exception v0

    .line 57
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_18
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->b()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 61
    return-void
.end method
