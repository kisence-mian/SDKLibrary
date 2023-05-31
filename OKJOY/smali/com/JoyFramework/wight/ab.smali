.class public Lcom/JoyFramework/wight/ab;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/ab$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field public c:Landroid/webkit/WebView;

.field public d:Lcom/JoyFramework/wight/ab$a;

.field public e:Ljava/lang/String;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/JoyFramework/wight/ab$a;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p1, p0, Lcom/JoyFramework/wight/ab;->a:Landroid/content/Context;

    .line 36
    iput-object p4, p0, Lcom/JoyFramework/wight/ab;->e:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/JoyFramework/wight/ab;->h:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/JoyFramework/wight/ab;->d:Lcom/JoyFramework/wight/ab$a;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_web"

    const-string v2, "layout"

    .line 40
    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/ab;->b:Landroid/view/View;

    .line 42
    invoke-virtual {p0, v3}, Lcom/JoyFramework/wight/ab;->setCanceledOnTouchOutside(Z)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/JoyFramework/wight/ab;->setCancelable(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/wight/ab$a;)V
    .registers 11

    .prologue
    .line 29
    const-string v0, "JoyGame_Dialog_theme"

    const-string v1, "style"

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/ab;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/JoyFramework/wight/ab$a;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->d:Lcom/JoyFramework/wight/ab$a;

    if-eqz v0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->d:Lcom/JoyFramework/wight/ab$a;

    invoke-interface {v0, p0, p1}, Lcom/JoyFramework/wight/ab$a;->a(Lcom/JoyFramework/wight/ab;Landroid/view/View;)V

    .line 53
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ab;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->a:Landroid/content/Context;

    const-string v2, "webview"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/JoyFramework/wight/ab;->c:Landroid/webkit/WebView;

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->a:Landroid/content/Context;

    const-string v2, "l_dialog_web_close"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/wight/ab;->f:Landroid/widget/FrameLayout;

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->a:Landroid/content/Context;

    const-string v2, "l_dialog_web_title"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/ab;->g:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/JoyFramework/wight/ab;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->c:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/JoyFramework/wight/ac;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/ac;-><init>(Lcom/JoyFramework/wight/ab;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/JoyFramework/wight/ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    :goto_74
    return-void

    .line 103
    :cond_75
    iget-object v0, p0, Lcom/JoyFramework/wight/ab;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/JoyFramework/wight/ab;->e:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74
.end method
