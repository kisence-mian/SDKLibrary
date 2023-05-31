.class public Lcom/JoyFramework/module/login/a/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/login/a/c$a;,
        Lcom/JoyFramework/module/login/a/c$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/JoyFramework/module/login/a/c$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/JoyFramework/module/login/a/c;->a:Ljava/util/List;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/a/c;)Lcom/JoyFramework/module/login/a/c$a;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->d:Lcom/JoyFramework/module/login/a/c$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/a/c$a;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/JoyFramework/module/login/a/c;->d:Lcom/JoyFramework/module/login/a/c$a;

    .line 92
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->a:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    .line 49
    if-nez p2, :cond_6d

    .line 50
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/a/c;->b:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/a/c;->c:Landroid/view/LayoutInflater;

    .line 52
    new-instance v1, Lcom/JoyFramework/module/login/a/c$b;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/login/a/c$b;-><init>(Lcom/JoyFramework/module/login/a/c;)V

    .line 53
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->c:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/JoyFramework/module/login/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_item_record"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->b:Landroid/content/Context;

    const-string v2, "item_record"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/login/a/c$b;->a:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->b:Landroid/content/Context;

    const-string v2, "item_delete"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/JoyFramework/module/login/a/c$b;->b:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_49
    iget-object v2, v1, Lcom/JoyFramework/module/login/a/c$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/login/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v0, Lcom/JoyFramework/module/login/a/d;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/module/login/a/d;-><init>(Lcom/JoyFramework/module/login/a/c;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, v1, Lcom/JoyFramework/module/login/a/c$b;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/JoyFramework/module/login/a/e;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/login/a/e;-><init>(Lcom/JoyFramework/module/login/a/c;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-object p2

    .line 59
    :cond_6d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/module/login/a/c$b;

    move-object v1, v0

    goto :goto_49
.end method
