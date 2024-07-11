.class Lcom/kwad/sdk/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/c$1;->a:Lcom/kwad/sdk/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/c$1;->a:Lcom/kwad/sdk/c/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/c;->h()V

    return-void
.end method
