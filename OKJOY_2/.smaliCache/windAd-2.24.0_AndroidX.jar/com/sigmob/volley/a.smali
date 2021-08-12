.class public Lcom/sigmob/volley/a;
.super Lcom/sigmob/volley/t;


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/volley/t;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/volley/t;-><init>(Lcom/sigmob/volley/j;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
