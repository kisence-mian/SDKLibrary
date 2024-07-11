.class public final Lcom/tapjoy/internal/ee;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/dz$b;


# instance fields
.field final a:Lcom/tapjoy/internal/ea;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/ea;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/ee;->a:Lcom/tapjoy/internal/ea;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/ee;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/ee;->a:Lcom/tapjoy/internal/ea;

    new-instance v1, Lcom/tapjoy/internal/eb;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/eb;-><init>(Lcom/tapjoy/internal/dz$b;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ea;->a(Lcom/tapjoy/internal/dz;)V

    return-void
.end method
