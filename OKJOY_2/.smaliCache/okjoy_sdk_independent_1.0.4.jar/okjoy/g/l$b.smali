.class public Lokjoy/g/l$b;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/g/l;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/g/l;


# direct methods
.method public constructor <init>(Lokjoy/g/l;)V
    .registers 2

    iput-object p1, p0, Lokjoy/g/l$b;->a:Lokjoy/g/l;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string p1, "\u70b9\u51fb\u6ce8\u518c\u534f\u8bae"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/g/l$b;->a:Lokjoy/g/l;

    if-eqz p1, :cond_32

    .line 1
    new-instance v0, Lokjoy/u/a;

    iget-object v1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v1, "\u52a0\u8f7d\u4e2d..."

    iput-object v1, v0, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lokjoy/u/a;->show()V

    iget-object v1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v2, Lokjoy/g/p;

    invoke-direct {v2, p1, v0}, Lokjoy/g/p;-><init>(Lokjoy/g/l;Lokjoy/u/a;)V

    .line 4
    new-instance p1, Lokjoy/h/p;

    invoke-direct {p1, v1}, Lokjoy/h/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/q;

    invoke-direct {v0, v2}, Lokjoy/h/q;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=info&ac=protocol"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void

    :cond_32
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object v0, p0, Lokjoy/g/l$b;->a:Lokjoy/g/l;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, -0x1

    goto :goto_29

    .line 1
    :cond_11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "joy_theme"

    const-string v4, "color"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2
    :goto_29
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
