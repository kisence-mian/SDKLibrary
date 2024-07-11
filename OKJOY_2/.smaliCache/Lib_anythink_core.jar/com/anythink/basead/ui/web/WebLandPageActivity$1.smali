.class final Lcom/anythink/basead/ui/web/WebLandPageActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/web/WebLandPageActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/web/WebLandPageActivity;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 214
    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 218
    iget-object p2, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-virtual {p2}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-static {p3}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/d/i;

    move-result-object p3

    iget-object p4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-static {p4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/d/h;

    move-result-object p4

    iget-object p5, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-static {p5}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/basead/c/e;

    move-result-object p5

    invoke-static {p2, p3, p4, p5, p1}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/c/e;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2b

    .line 224
    :cond_26
    iget-object p2, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-static {p2, p1}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    :cond_2b
    return-void
.end method
