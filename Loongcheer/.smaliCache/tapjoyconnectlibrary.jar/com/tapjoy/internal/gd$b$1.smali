.class final Lcom/tapjoy/internal/gd$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gd$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/tapjoy/internal/gd$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gd$b;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 302
    iput-object p1, p0, Lcom/tapjoy/internal/gd$b$1;->b:Lcom/tapjoy/internal/gd$b;

    iput-object p2, p0, Lcom/tapjoy/internal/gd$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 306
    iget-object v0, p0, Lcom/tapjoy/internal/gd$b$1;->b:Lcom/tapjoy/internal/gd$b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gd$b;->a(Lcom/tapjoy/internal/gd$b;Z)Z

    .line 307
    iget-object v0, p0, Lcom/tapjoy/internal/gd$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 308
    return-void
.end method
