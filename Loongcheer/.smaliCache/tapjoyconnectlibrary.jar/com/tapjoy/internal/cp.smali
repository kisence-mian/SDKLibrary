.class public final Lcom/tapjoy/internal/cp;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tapjoy/internal/cv;

.field final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/cw;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/internal/cw;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/tapjoy/internal/cq;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/cv;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/cq;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/cv;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/cw;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tapjoy/internal/cq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/cp;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/cp;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/tapjoy/internal/cp;->a:Lcom/tapjoy/internal/cv;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/cp;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/tapjoy/internal/cp;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/tapjoy/internal/cp;->h:Lcom/tapjoy/internal/cq;

    if-eqz p3, :cond_3d

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tapjoy/internal/cw;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p6, p0, Lcom/tapjoy/internal/cp;->d:Ljava/util/Map;

    invoke-interface {p6, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_3d
    iput-object p4, p0, Lcom/tapjoy/internal/cp;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/internal/cp;->f:Ljava/lang/String;

    return-void
.end method
