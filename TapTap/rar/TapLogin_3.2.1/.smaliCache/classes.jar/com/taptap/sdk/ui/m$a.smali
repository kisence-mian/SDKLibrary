.class Lcom/taptap/sdk/ui/m$a;
.super Ljava/lang/Object;
.source "WebViewHandler.java"

# interfaces
.implements Lcom/taptap/sdk/ui/l$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/ui/m;->a(Lcom/taptap/sdk/LoginRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/m;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/m$a;->a:Lcom/taptap/sdk/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/LoginResponse;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/m$a;->a:Lcom/taptap/sdk/ui/m;

    invoke-static {v0}, Lcom/taptap/sdk/ui/m;->a(Lcom/taptap/sdk/ui/m;)Lcom/taptap/sdk/ui/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taptap/sdk/LoginResponse;->toIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/ui/a;->a(ILandroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/ui/m$a;->a:Lcom/taptap/sdk/ui/m;

    invoke-static {p1}, Lcom/taptap/sdk/ui/m;->a(Lcom/taptap/sdk/ui/m;)Lcom/taptap/sdk/ui/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/ui/a;->a()V

    return-void
.end method
