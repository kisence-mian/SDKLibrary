.class public final Lcom/tapjoy/internal/am;
.super Lcom/tapjoy/internal/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tapjoy/internal/al<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Lcom/tapjoy/internal/ah<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 12
    invoke-direct {p0}, Lcom/tapjoy/internal/al;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/tapjoy/internal/am;->a:Ljava/util/LinkedHashMap;

    .line 14
    const/16 v0, 0xa

    iput v0, p0, Lcom/tapjoy/internal/am;->b:I

    .line 15
    return-void
.end method

.method private a()V
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/am;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/am;->b:I

    sub-int/2addr v0, v1

    .line 38
    if-lez v0, :cond_26

    .line 39
    iget-object v1, p0, Lcom/tapjoy/internal/am;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    :goto_15
    if-lez v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 46
    :cond_26
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/aj;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/tapjoy/internal/aj<",
            "TV;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/am;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ah;

    .line 67
    if-nez v0, :cond_19

    if-eqz p2, :cond_19

    .line 68
    new-instance v0, Lcom/tapjoy/internal/ah;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/ah;-><init>(Ljava/lang/Object;)V

    .line 69
    iget-object p2, p0, Lcom/tapjoy/internal/am;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Lcom/tapjoy/internal/am;->a()V

    .line 72
    :cond_19
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/tapjoy/internal/am;->a()V

    .line 52
    return-void
.end method
