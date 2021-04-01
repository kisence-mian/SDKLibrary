.class public Lcom/JoyFramework/d/cc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Toast;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/JoyFramework/d/cc;-><init>()V

    .line 32
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "joy_toast_view"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/cc;->c:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/JoyFramework/d/cc;->c:Landroid/view/View;

    const-string v2, "l_toast_text"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/d/cc;->b:Landroid/widget/TextView;

    .line 35
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/JoyFramework/d/cc;->a:Landroid/widget/Toast;

    .line 36
    iget-object v0, p0, Lcom/JoyFramework/d/cc;->a:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/JoyFramework/d/cc;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/JoyFramework/d/cc;->a:Landroid/widget/Toast;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_41

    .line 41
    :goto_40
    return-void

    .line 38
    :catch_41
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method public static varargs a(Landroid/app/Activity;Ljava/lang/String;[Z)V
    .registers 4

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    :cond_6
    :goto_6
    return-void

    .line 75
    :cond_7
    if-eqz p0, :cond_6

    .line 76
    new-instance v0, Lcom/JoyFramework/d/cd;

    invoke-direct {v0, p2, p0, p1}, Lcom/JoyFramework/d/cd;-><init>([ZLandroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/d/cc;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    if-gtz p2, :cond_13

    .line 53
    iget-object v0, p0, Lcom/JoyFramework/d/cc;->a:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 57
    :goto_d
    iget-object v0, p0, Lcom/JoyFramework/d/cc;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    :goto_12
    return-void

    .line 55
    :cond_13
    iget-object v0, p0, Lcom/JoyFramework/d/cc;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_d

    .line 58
    :catch_19
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
