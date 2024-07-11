.class public abstract Lcom/tapjoy/internal/fr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/internal/gh$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/tapjoy/internal/fr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fr;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fr;->a:Ljava/util/Map;

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/fr;->c:Ljava/util/Map;

    .line 18
    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "placement_type"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "content_type"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;
    .registers 3

    .line 68
    invoke-static {p1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 69
    iget-object v0, p0, Lcom/tapjoy/internal/fr;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/gh$a;

    return-object p1

    .line 72
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/gh$a;
    .registers 3

    .line 80
    nop

    .line 1024
    const-string v0, "Content.rendered"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/tapjoy/internal/gh$a;"
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lcom/tapjoy/internal/gh;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->a()Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fr;->a:Ljava/util/Map;

    .line 30
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gh$a;->a(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/gh$a;->a(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object p2

    .line 32
    invoke-virtual {p2, p3}, Lcom/tapjoy/internal/gh$a;->b(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object p2

    .line 34
    iget-object p3, p0, Lcom/tapjoy/internal/fr;->c:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object p2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/fr;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public final b()Lcom/tapjoy/internal/gh$a;
    .registers 3

    .line 84
    nop

    .line 1039
    const-string v0, "Content.rendered"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method protected final b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/tapjoy/internal/gh$a;"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 44
    if-nez v0, :cond_21

    .line 45
    sget-object p2, Lcom/tapjoy/internal/fr;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Error when calling endTrackingEvent -- "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " tracking has not been started."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 47
    :cond_21
    iget-object p1, p0, Lcom/tapjoy/internal/fr;->a:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gh$a;->a(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/gh$a;->a(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/gh$a;->b(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/tapjoy/internal/gh$a;->b()Lcom/tapjoy/internal/gh$a;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 54
    :goto_36
    return-object v0
.end method

.method public final c()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/tapjoy/internal/fr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    return-void
.end method
