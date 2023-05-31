.class public Lcom/JoyFramework/module/login/d/ap;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_protocol_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 108
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->a()V

    .line 109
    :cond_17
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_protocol_back2"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 110
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->a()V

    .line 113
    :cond_2a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_protocol_k"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->a:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/login/d/ap;->a(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "k_frg_protocol_web_view"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->b:Landroid/webkit/WebView;

    .line 47
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_protocol_title"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->c:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_protocol_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_protocol_back2"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->a:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 102
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 92
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 97
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 72
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_20

    .line 74
    const-string v1, "protocol_Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->c:Landroid/widget/TextView;

    const-string v1, "\u9690\u79c1\u58f0\u660e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget-object v0, Lcom/JoyFramework/a/a;->z:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ap;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    :cond_20
    :goto_20
    return-void

    .line 82
    :cond_21
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ap;->c:Landroid/widget/TextView;

    const-string v1, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget-object v0, Lcom/JoyFramework/a/a;->y:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ap;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_20
.end method
