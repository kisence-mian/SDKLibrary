.class public final Lcom/tapjoy/internal/ec;
.super Lcom/tapjoy/internal/dy;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/dz$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/dz$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dz$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 9

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 2000
    iget-object v0, v0, Lcom/tapjoy/internal/dc;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1000
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/cx;

    iget-object v2, p0, Lcom/tapjoy/internal/ec;->a:Ljava/util/HashSet;

    .line 3000
    iget-object v3, v1, Lcom/tapjoy/internal/cx;->f:Ljava/lang/String;

    .line 1000
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4000
    iget-object v1, v1, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 1000
    iget-wide v2, p0, Lcom/tapjoy/internal/ec;->c:J

    .line 5000
    iget-wide v4, v1, Lcom/tapjoy/internal/dt;->d:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_45

    iget v2, v1, Lcom/tapjoy/internal/dt;->c:I

    sget v3, Lcom/tapjoy/internal/dt$a;->c:I

    if-eq v2, v3, :cond_45

    sget v2, Lcom/tapjoy/internal/dt$a;->c:I

    iput v2, v1, Lcom/tapjoy/internal/dt;->c:I

    invoke-static {}, Lcom/tapjoy/internal/dg;->a()Lcom/tapjoy/internal/dg;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tapjoy/internal/dt;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/tapjoy/internal/dg;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1000
    :cond_45
    goto :goto_10

    :cond_46
    invoke-super {p0, p1}, Lcom/tapjoy/internal/dy;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6000
    iget-object p1, p0, Lcom/tapjoy/internal/ec;->b:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ec;->a(Ljava/lang/String;)V

    return-void
.end method
