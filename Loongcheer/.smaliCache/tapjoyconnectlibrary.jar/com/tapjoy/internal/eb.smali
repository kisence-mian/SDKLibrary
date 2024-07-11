.class public final Lcom/tapjoy/internal/eb;
.super Lcom/tapjoy/internal/dz;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/dz$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dz;-><init>(Lcom/tapjoy/internal/dz$b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1000
    iget-object p1, p0, Lcom/tapjoy/internal/eb;->e:Lcom/tapjoy/internal/dz$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/dz$b;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method
