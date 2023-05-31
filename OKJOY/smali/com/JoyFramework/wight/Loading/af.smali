.class public Lcom/JoyFramework/wight/Loading/af;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/Loading/af$a;
    }
.end annotation


# instance fields
.field private a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

.field private b:Lcom/JoyFramework/wight/Loading/af$a;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/JoyFramework/wight/Loading/af$a;)V
    .registers 4

    .prologue
    .line 21
    invoke-static {p1}, Lcom/JoyFramework/wight/Loading/af$a;->a(Lcom/JoyFramework/wight/Loading/af$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/JoyFramework/wight/Loading/af$a;->b(Lcom/JoyFramework/wight/Loading/af$a;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/af;->b:Lcom/JoyFramework/wight/Loading/af$a;

    .line 23
    invoke-static {p1}, Lcom/JoyFramework/wight/Loading/af$a;->a(Lcom/JoyFramework/wight/Loading/af$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->c:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->b:Lcom/JoyFramework/wight/Loading/af$a;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/af$a;->c(Lcom/JoyFramework/wight/Loading/af$a;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/Loading/af;->setCancelable(Z)V

    .line 25
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->b:Lcom/JoyFramework/wight/Loading/af$a;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/af$a;->d(Lcom/JoyFramework/wight/Loading/af$a;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/Loading/af;->setCanceledOnTouchOutside(Z)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/JoyFramework/wight/Loading/af$a;Lcom/JoyFramework/wight/Loading/ag;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/Loading/af;-><init>(Lcom/JoyFramework/wight/Loading/af$a;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/af;)Lcom/JoyFramework/wight/Loading/OkGameLoadingView;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/af;Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Lcom/JoyFramework/wight/Loading/OkGameLoadingView;
    .registers 2

    .prologue
    .line 12
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/af;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/af;Lcom/JoyFramework/wight/Loading/af$a;)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 12
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/af;->b:Lcom/JoyFramework/wight/Loading/af$a;

    return-object p1
.end method

.method static synthetic b(Lcom/JoyFramework/wight/Loading/af;)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->b:Lcom/JoyFramework/wight/Loading/af$a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->b:Lcom/JoyFramework/wight/Loading/af$a;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    :try_start_3
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "joy_dialog_loadview"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/Loading/af;->setContentView(I)V

    .line 33
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loadview"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/Loading/af;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    .line 35
    new-instance v0, Lcom/JoyFramework/wight/Loading/ag;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/Loading/ag;-><init>(Lcom/JoyFramework/wight/Loading/af;)V

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/Loading/af;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    .line 50
    :goto_2e
    return-void

    .line 47
    :catch_2f
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public show()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 56
    :try_start_3
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    .line 61
    :cond_c
    :goto_c
    return-void

    .line 58
    :catch_d
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
