.class public final Lokhttp3/internal/connection/RouteSelector$Selection;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/RouteSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selection"
.end annotation


# instance fields
.field private nextRouteIndex:I

.field private final routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    .line 223
    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    .line 224
    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .line 227
    iget v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Lokhttp3/Route;
    .registers 4

    .line 231
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 234
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Route;

    return-object v0

    .line 232
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
