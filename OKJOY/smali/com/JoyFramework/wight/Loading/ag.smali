.class Lcom/JoyFramework/wight/Loading/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/af;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/af;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/ag;->a:Lcom/JoyFramework/wight/Loading/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ag;->a:Lcom/JoyFramework/wight/Loading/af;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/af;->a(Lcom/JoyFramework/wight/Loading/af;)Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 39
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ag;->a:Lcom/JoyFramework/wight/Loading/af;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/af;->a(Lcom/JoyFramework/wight/Loading/af;)Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->onDetachedFromWindow()V

    .line 40
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ag;->a:Lcom/JoyFramework/wight/Loading/af;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/af;->a(Lcom/JoyFramework/wight/Loading/af;Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    .line 41
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ag;->a:Lcom/JoyFramework/wight/Loading/af;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/af;->b(Lcom/JoyFramework/wight/Loading/af;)Lcom/JoyFramework/wight/Loading/af$a;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 42
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ag;->a:Lcom/JoyFramework/wight/Loading/af;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/af;->a(Lcom/JoyFramework/wight/Loading/af;Lcom/JoyFramework/wight/Loading/af$a;)Lcom/JoyFramework/wight/Loading/af$a;

    .line 45
    :cond_24
    return-void
.end method
