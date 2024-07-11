.class public final Lcom/tapjoy/internal/dw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/dw;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/dw;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/dw$1;->a:Lcom/tapjoy/internal/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/dw$1;->a:Lcom/tapjoy/internal/dw;

    invoke-static {v0}, Lcom/tapjoy/internal/dw;->a(Lcom/tapjoy/internal/dw;)Lcom/tapjoy/internal/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ee;->b()V

    return-void
.end method
