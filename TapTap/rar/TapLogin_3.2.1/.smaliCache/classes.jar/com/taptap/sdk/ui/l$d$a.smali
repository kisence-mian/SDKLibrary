.class Lcom/taptap/sdk/ui/l$d$a;
.super Ljava/lang/Object;
.source "WebBlock.java"

# interfaces
.implements Lcom/taptap/sdk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/ui/l$d;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/l$d;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/l$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/l$d$a;->a:Lcom/taptap/sdk/ui/l$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/LoginResponse;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/l$d$a;->a:Lcom/taptap/sdk/ui/l$d;

    iget-object v0, v0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {v0}, Lcom/taptap/sdk/ui/l;->b(Lcom/taptap/sdk/ui/l;)Lcom/taptap/sdk/ui/l$e;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/l$d$a;->a:Lcom/taptap/sdk/ui/l$d;

    iget-object v0, v0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {v0}, Lcom/taptap/sdk/ui/l;->b(Lcom/taptap/sdk/ui/l;)Lcom/taptap/sdk/ui/l$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taptap/sdk/ui/l$e;->a(Lcom/taptap/sdk/LoginResponse;)V

    :cond_15
    return-void
.end method
