.class public Lcom/JoyFramework/wight/ServerOrRoleListDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/ServerOrRoleListDialog$b;,
        Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;,
        Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/m;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/am;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;

.field private i:Lcom/JoyFramework/wight/ServerOrRoleListDialog$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/JoyFramework/wight/ServerOrRoleListDialog$a;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-object p3, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;

    .line 50
    iput-object p1, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->b:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/m;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "JoyGame_Dialog_theme"

    const-string v1, "style"

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;-><init>(Landroid/content/Context;ILcom/JoyFramework/wight/ServerOrRoleListDialog$a;)V

    .line 43
    iput-object p3, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->f:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->g:Ljava/util/List;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->f:Ljava/util/List;

    if-eqz v0, :cond_31

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->d:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u533a\u670d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->h:Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;

    if-nez v0, :cond_31

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 78
    new-instance v0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;

    iget-object v1, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;-><init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->h:Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->h:Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/JoyFramework/wight/t;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/t;-><init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    :cond_31
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->g:Ljava/util/List;

    if-eqz v0, :cond_62

    .line 94
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->d:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u89d2\u8272"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->i:Lcom/JoyFramework/wight/ServerOrRoleListDialog$b;

    if-nez v0, :cond_62

    .line 96
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    .line 97
    new-instance v0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$b;

    iget-object v1, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->g:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/wight/ServerOrRoleListDialog$b;-><init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->i:Lcom/JoyFramework/wight/ServerOrRoleListDialog$b;

    .line 98
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->i:Lcom/JoyFramework/wight/ServerOrRoleListDialog$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/JoyFramework/wight/u;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/u;-><init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    :cond_62
    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)Ljava/util/List;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)Ljava/util/List;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->b:Landroid/content/Context;

    const-string v2, "l_dialog_server_or_role_list_k"

    const-string v3, "layout"

    .line 57
    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_server_or_role_listView"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->c:Landroid/widget/ListView;

    .line 60
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_server_or_role_text"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->d:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->b:Landroid/content/Context;

    const-string v2, "k_dialog_server_or_role_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->e:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/JoyFramework/wight/s;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/s;-><init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->a()V

    .line 70
    invoke-virtual {p0, v1}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method
