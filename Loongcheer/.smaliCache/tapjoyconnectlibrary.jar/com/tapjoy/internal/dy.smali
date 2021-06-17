.class public abstract Lcom/tapjoy/internal/dy;
.super Lcom/tapjoy/internal/dz;


# instance fields
.field protected final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lorg/json/JSONObject;

.field protected final c:J


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

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dz;-><init>(Lcom/tapjoy/internal/dz$b;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/tapjoy/internal/dy;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/tapjoy/internal/dy;->b:Lorg/json/JSONObject;

    iput-wide p4, p0, Lcom/tapjoy/internal/dy;->c:J

    return-void
.end method
