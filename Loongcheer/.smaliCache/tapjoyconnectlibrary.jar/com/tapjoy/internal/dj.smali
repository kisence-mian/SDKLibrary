.class public final Lcom/tapjoy/internal/dj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tapjoy/internal/dl;

.field public final b:Lcom/tapjoy/internal/dk;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/dl;

    invoke-direct {v0}, Lcom/tapjoy/internal/dl;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dj;->a:Lcom/tapjoy/internal/dl;

    new-instance v1, Lcom/tapjoy/internal/dk;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dk;-><init>(Lcom/tapjoy/internal/di;)V

    iput-object v1, p0, Lcom/tapjoy/internal/dj;->b:Lcom/tapjoy/internal/dk;

    return-void
.end method
