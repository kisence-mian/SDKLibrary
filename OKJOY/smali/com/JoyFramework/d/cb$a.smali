.class Lcom/JoyFramework/d/cb$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/d/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/cb;

.field private b:Lcom/JoyFramework/d/cb$b;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/d/cb;Lcom/JoyFramework/d/cb$b;)V
    .registers 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/JoyFramework/d/cb$a;->a:Lcom/JoyFramework/d/cb;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/JoyFramework/d/cb$a;->b:Lcom/JoyFramework/d/cb$b;

    .line 71
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/JoyFramework/d/cb$a;->b:Lcom/JoyFramework/d/cb$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/d/cb$b;->a(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 81
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "joygame_theme_blue"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 82
    return-void
.end method
