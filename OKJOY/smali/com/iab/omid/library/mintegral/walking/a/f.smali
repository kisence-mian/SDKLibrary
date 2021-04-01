.class public Lcom/iab/omid/library/mintegral/walking/a/f;
.super Lcom/iab/omid/library/mintegral/walking/a/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/mintegral/walking/a/b$b;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "D)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/iab/omid/library/mintegral/walking/a/a;-><init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/a;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/a;

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/walking/a/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    iget-wide v2, p0, Lcom/iab/omid/library/mintegral/walking/a/f;->c:D

    invoke-virtual {v0, p1, v2, v3}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;D)V

    goto :goto_e

    :cond_30
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a/f;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/walking/a/f;->d:Lcom/iab/omid/library/mintegral/walking/a/b$b;

    invoke-interface {v1}, Lcom/iab/omid/library/mintegral/walking/a/b$b;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iab/omid/library/mintegral/d/b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a/f;->d:Lcom/iab/omid/library/mintegral/walking/a/b$b;

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/walking/a/f;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/iab/omid/library/mintegral/walking/a/b$b;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/f;->b(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/f;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/f;->a(Ljava/lang/String;)V

    return-void
.end method
