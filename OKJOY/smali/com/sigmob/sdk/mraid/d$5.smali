.class Lcom/sigmob/sdk/mraid/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/r;Ljava/util/Map;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/r;

.field final synthetic b:Lcom/sigmob/sdk/mraid/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/r;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d$5;->b:Lcom/sigmob/sdk/mraid/d;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/d$5;->a:Lcom/sigmob/sdk/mraid/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/mraid/g;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$5;->b:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d$5;->a:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/g;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/r;Ljava/lang/String;)V

    return-void
.end method
