.class Lcom/sigmob/volley/toolbox/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/sigmob/volley/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/volley/toolbox/k;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/k;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$2;->b:Lcom/sigmob/volley/toolbox/k;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/k$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$2;->b:Lcom/sigmob/volley/toolbox/k;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/k$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/t;)V

    return-void
.end method
