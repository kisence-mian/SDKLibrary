.class Lcom/sigmob/sdk/mraid/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/MraidWebView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a$3;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a$3;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a$b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a$3;->a:Lcom/sigmob/sdk/mraid/a;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/a$b;->a(Z)V

    :cond_11
    return-void
.end method
