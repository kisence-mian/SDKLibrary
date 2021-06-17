.class public final Lcom/tapjoy/internal/au;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/tapjoy/internal/br<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tapjoy/internal/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bs<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    .line 14
    new-instance v0, Lcom/tapjoy/internal/bs;

    invoke-direct {v0}, Lcom/tapjoy/internal/bs;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/au;->b:Lcom/tapjoy/internal/bs;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/au;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tapjoy/internal/au<",
            "TK;TV;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/tapjoy/internal/au;

    invoke-direct {v0}, Lcom/tapjoy/internal/au;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/br<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/au;->b:Lcom/tapjoy/internal/bs;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->a()Lcom/tapjoy/internal/br;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 108
    iget-object v1, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    .line 1016
    iget-object v0, v0, Lcom/tapjoy/internal/br;->a:Ljava/lang/Object;

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_10
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 25
    :goto_5
    iget-object v0, p0, Lcom/tapjoy/internal/au;->b:Lcom/tapjoy/internal/bs;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->a()Lcom/tapjoy/internal/br;

    move-result-object v0

    if-nez v0, :cond_e

    .line 28
    return-void

    .line 25
    :cond_e
    goto :goto_5
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lcom/tapjoy/internal/au;, "Lcom/tapjoy/internal/au<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 38
    .local p0, "this":Lcom/tapjoy/internal/au;, "Lcom/tapjoy/internal/au<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 39
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/br;

    .line 40
    invoke-virtual {v1}, Lcom/tapjoy/internal/br;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 41
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_25
    goto :goto_d

    .line 44
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 89
    .local p0, "this":Lcom/tapjoy/internal/au;, "Lcom/tapjoy/internal/au<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/tapjoy/internal/au;, "Lcom/tapjoy/internal/au<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/br;

    invoke-static {v0}, Lcom/tapjoy/internal/au;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 95
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/tapjoy/internal/au;, "Lcom/tapjoy/internal/au<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 56
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tapjoy/internal/au;->b:Lcom/tapjoy/internal/bs;

    .line 1010
    new-instance v2, Lcom/tapjoy/internal/br;

    invoke-direct {v2, p1, p2, v1}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 56
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/br;

    invoke-static {v0}, Lcom/tapjoy/internal/au;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/tapjoy/internal/au;, "Lcom/tapjoy/internal/au<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 62
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/br;

    invoke-static {v0}, Lcom/tapjoy/internal/au;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 19
    iget-object v0, p0, Lcom/tapjoy/internal/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 101
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/tapjoy/internal/au;->b()V

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
