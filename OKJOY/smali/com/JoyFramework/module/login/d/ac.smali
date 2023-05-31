.class Lcom/JoyFramework/module/login/d/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/w;

.field final synthetic b:Lcom/JoyFramework/module/login/d/v;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V
    .registers 3

    .prologue
    .line 439
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/ac;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 443
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->dismiss()V

    .line 444
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/wight/f;)Lcom/JoyFramework/wight/f;

    .line 448
    :cond_2b
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->c(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v0, v1, :cond_4c

    .line 449
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 450
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ac;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v1}, Lcom/JoyFramework/remote/bean/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/ad;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/login/d/ad;-><init>(Lcom/JoyFramework/module/login/d/ac;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 491
    return-void

    .line 452
    :cond_5b
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 453
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ac;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4c

    .line 455
    :cond_73
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_4c
.end method

.method public b()V
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ac;->b:Lcom/JoyFramework/module/login/d/v;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ac;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V

    .line 496
    return-void
.end method
