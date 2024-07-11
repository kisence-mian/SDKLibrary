.class public final Lcom/tapjoy/internal/dh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/cj;
.implements Lcom/tapjoy/internal/dd$a;


# static fields
.field private static c:Lcom/tapjoy/internal/dh;


# instance fields
.field public a:F

.field public b:Lcom/tapjoy/internal/ck;

.field private final d:Lcom/tapjoy/internal/cl;

.field private final e:Lcom/tapjoy/internal/ci;

.field private f:Lcom/tapjoy/internal/dc;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/cl;Lcom/tapjoy/internal/ci;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dh;->a:F

    iput-object p1, p0, Lcom/tapjoy/internal/dh;->d:Lcom/tapjoy/internal/cl;

    iput-object p2, p0, Lcom/tapjoy/internal/dh;->e:Lcom/tapjoy/internal/ci;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dh;
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/dh;->c:Lcom/tapjoy/internal/dh;

    if-nez v0, :cond_15

    new-instance v0, Lcom/tapjoy/internal/ci;

    invoke-direct {v0}, Lcom/tapjoy/internal/ci;-><init>()V

    new-instance v1, Lcom/tapjoy/internal/cl;

    invoke-direct {v1}, Lcom/tapjoy/internal/cl;-><init>()V

    new-instance v2, Lcom/tapjoy/internal/dh;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/dh;-><init>(Lcom/tapjoy/internal/cl;Lcom/tapjoy/internal/ci;)V

    sput-object v2, Lcom/tapjoy/internal/dh;->c:Lcom/tapjoy/internal/dh;

    :cond_15
    sget-object v0, Lcom/tapjoy/internal/dh;->c:Lcom/tapjoy/internal/dh;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .registers 4

    iput p1, p0, Lcom/tapjoy/internal/dh;->a:F

    .line 3000
    iget-object v0, p0, Lcom/tapjoy/internal/dh;->f:Lcom/tapjoy/internal/dc;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dh;->f:Lcom/tapjoy/internal/dc;

    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/dh;->f:Lcom/tapjoy/internal/dc;

    .line 4000
    iget-object v0, v0, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/cx;

    .line 5000
    iget-object v1, v1, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/dt;->a(F)V

    goto :goto_18

    :cond_2a
    return-void
.end method

.method public final a(Z)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/tapjoy/internal/dw;->a()Lcom/tapjoy/internal/dw;

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/dw;->b()V

    return-void

    :cond_9
    invoke-static {}, Lcom/tapjoy/internal/dw;->a()Lcom/tapjoy/internal/dw;

    .line 2000
    invoke-static {}, Lcom/tapjoy/internal/dw;->c()V

    return-void
.end method
