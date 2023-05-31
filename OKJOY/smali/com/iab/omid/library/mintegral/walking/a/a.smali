.class public abstract Lcom/iab/omid/library/mintegral/walking/a/a;
.super Lcom/iab/omid/library/mintegral/walking/a/b;


# instance fields
.field protected final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lorg/json/JSONObject;

.field protected final c:D


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V
    .registers 8
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

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/b;-><init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a/a;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/walking/a/a;->b:Lorg/json/JSONObject;

    iput-wide p4, p0, Lcom/iab/omid/library/mintegral/walking/a/a;->c:D

    return-void
.end method
