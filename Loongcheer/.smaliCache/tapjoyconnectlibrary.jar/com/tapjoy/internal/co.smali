.class public final Lcom/tapjoy/internal/co;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tapjoy/internal/cu;

.field public final b:Lcom/tapjoy/internal/cu;

.field final c:Z

.field final d:Lcom/tapjoy/internal/cr;

.field final e:Lcom/tapjoy/internal/ct;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/cr;Lcom/tapjoy/internal/ct;Lcom/tapjoy/internal/cu;Lcom/tapjoy/internal/cu;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/co;->d:Lcom/tapjoy/internal/cr;

    iput-object p2, p0, Lcom/tapjoy/internal/co;->e:Lcom/tapjoy/internal/ct;

    iput-object p3, p0, Lcom/tapjoy/internal/co;->a:Lcom/tapjoy/internal/cu;

    if-nez p4, :cond_10

    sget-object p1, Lcom/tapjoy/internal/cu;->c:Lcom/tapjoy/internal/cu;

    iput-object p1, p0, Lcom/tapjoy/internal/co;->b:Lcom/tapjoy/internal/cu;

    goto :goto_12

    :cond_10
    iput-object p4, p0, Lcom/tapjoy/internal/co;->b:Lcom/tapjoy/internal/cu;

    :goto_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/co;->c:Z

    return-void
.end method
