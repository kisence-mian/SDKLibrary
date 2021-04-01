.class final Lcom/JoyFramework/d/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/JoyFramework/d/e$b;

.field final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/JoyFramework/d/e$b;Landroid/app/Dialog;)V
    .registers 4

    .prologue
    .line 955
    iput-object p1, p0, Lcom/JoyFramework/d/y;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    iput-object p3, p0, Lcom/JoyFramework/d/y;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 958
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 959
    iget-object v1, p0, Lcom/JoyFramework/d/y;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id_share_to_qq"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2d

    .line 961
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    if-eqz v0, :cond_1d

    .line 962
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$b;->a()V

    .line 987
    :cond_1d
    :goto_1d
    invoke-static {}, Lcom/JoyFramework/d/e;->l()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 988
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/JoyFramework/d/e;->f(Landroid/view/View;)Landroid/view/View;

    .line 991
    :cond_27
    iget-object v0, p0, Lcom/JoyFramework/d/y;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 992
    return-void

    .line 964
    :cond_2d
    iget-object v1, p0, Lcom/JoyFramework/d/y;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id_share_to_qqZone"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_47

    .line 966
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    if-eqz v0, :cond_1d

    .line 967
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$b;->b()V

    goto :goto_1d

    .line 969
    :cond_47
    iget-object v1, p0, Lcom/JoyFramework/d/y;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id_share_to_weChat"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_61

    .line 971
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    if-eqz v0, :cond_1d

    .line 972
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$b;->c()V

    goto :goto_1d

    .line 974
    :cond_61
    iget-object v1, p0, Lcom/JoyFramework/d/y;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id_share_to_moments"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7b

    .line 976
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    if-eqz v0, :cond_1d

    .line 977
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$b;->d()V

    goto :goto_1d

    .line 979
    :cond_7b
    iget-object v1, p0, Lcom/JoyFramework/d/y;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id_share_to_weiBo"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 981
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    if-eqz v0, :cond_1d

    .line 982
    iget-object v0, p0, Lcom/JoyFramework/d/y;->b:Lcom/JoyFramework/d/e$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$b;->e()V

    goto :goto_1d
.end method
