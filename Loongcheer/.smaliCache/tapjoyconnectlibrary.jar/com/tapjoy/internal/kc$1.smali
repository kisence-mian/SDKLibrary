.class final Lcom/tapjoy/internal/kc$1;
.super Lcom/tapjoy/internal/ke;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/kc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/kc;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/kc$1;->a:Lcom/tapjoy/internal/kc;

    invoke-direct {p0}, Lcom/tapjoy/internal/ke;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1;->a:Lcom/tapjoy/internal/kc;

    .line 1123
    new-instance v1, Lcom/tapjoy/internal/kc$2;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/kc$2;-><init>(Lcom/tapjoy/internal/kc;)V

    .line 43
    new-instance v0, Lcom/tapjoy/internal/kc$1$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/kc$1$1;-><init>(Lcom/tapjoy/internal/kc$1;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method protected final b()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1;->a:Lcom/tapjoy/internal/kc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kc;->a()V

    .line 76
    return-void
.end method
