.class public Lcom/sigmob/volley/a;
.super Lcom/sigmob/volley/ae;


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/volley/ae;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/volley/ae;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/a;->b:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/volley/ae;-><init>(Lcom/sigmob/volley/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/volley/ae;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/volley/ae;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/a;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "User needs to (re)enter credentials."

    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
