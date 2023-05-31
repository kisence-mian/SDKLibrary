.class public Lcom/iab/omid/library/mintegral/walking/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/mintegral/walking/a/b$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lcom/iab/omid/library/mintegral/walking/a/c;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mintegral/walking/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/walking/b;->b:Lcom/iab/omid/library/mintegral/walking/a/c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/b;->b:Lcom/iab/omid/library/mintegral/walking/a/c;

    new-instance v1, Lcom/iab/omid/library/mintegral/walking/a/d;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/mintegral/walking/a/d;-><init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;)V

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/walking/a/c;->b(Lcom/iab/omid/library/mintegral/walking/a/b;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/walking/b;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/iab/omid/library/mintegral/walking/b;->b:Lcom/iab/omid/library/mintegral/walking/a/c;

    new-instance v0, Lcom/iab/omid/library/mintegral/walking/a/f;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/iab/omid/library/mintegral/walking/a/f;-><init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v6, v0}, Lcom/iab/omid/library/mintegral/walking/a/c;->b(Lcom/iab/omid/library/mintegral/walking/a/b;)V

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/iab/omid/library/mintegral/walking/b;->b:Lcom/iab/omid/library/mintegral/walking/a/c;

    new-instance v0, Lcom/iab/omid/library/mintegral/walking/a/e;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/iab/omid/library/mintegral/walking/a/e;-><init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v6, v0}, Lcom/iab/omid/library/mintegral/walking/a/c;->b(Lcom/iab/omid/library/mintegral/walking/a/b;)V

    return-void
.end method
