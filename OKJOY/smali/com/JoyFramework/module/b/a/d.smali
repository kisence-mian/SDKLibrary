.class public Lcom/JoyFramework/module/b/a/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/b/a/d$a;,
        Lcom/JoyFramework/module/b/a/d$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/aq;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/JoyFramework/module/b/a/d$a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/aq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/d;->a:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/b/a/d;)Lcom/JoyFramework/module/b/a/d$a;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->d:Lcom/JoyFramework/module/b/a/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/b/a/d$a;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/d;->d:Lcom/JoyFramework/module/b/a/d$a;

    .line 117
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    .line 53
    if-nez p2, :cond_d2

    .line 54
    new-instance v1, Lcom/JoyFramework/module/b/a/d$b;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/b/a/d$b;-><init>(Lcom/JoyFramework/module/b/a/d;)V

    .line 55
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/a/d;->c:Landroid/view/LayoutInflater;

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->c:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    const-string v3, "joy_item_unioninfo"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    const-string v2, "unionNameTV"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->a:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    const-string v2, "unionNumberTV"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->b:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    const-string v2, "union_item_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->c:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    const-string v2, "union_swipe_menu_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->d:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    .line 64
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->b:Landroid/content/Context;

    const-string v2, "deleteUnionInfo"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->e:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_79
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/aq;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/aq;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_da

    .line 71
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->a:Landroid/widget/TextView;

    const-string v2, "\u50a8\u84c4\u5361"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_8f
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/aq;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/aq;->b()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/d$b;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****    ****    ****    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/JoyFramework/module/b/a/e;

    invoke-direct {v2, p0, p1, v1}, Lcom/JoyFramework/module/b/a/e;-><init>(Lcom/JoyFramework/module/b/a/d;ILcom/JoyFramework/module/b/a/d$b;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/JoyFramework/module/b/a/f;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/module/b/a/f;-><init>(Lcom/JoyFramework/module/b/a/d;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object p2

    .line 68
    :cond_d2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/module/b/a/d$b;

    move-object v1, v0

    goto :goto_79

    .line 73
    :cond_da
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/d$b;->a:Landroid/widget/TextView;

    const-string v2, "\u4fe1\u7528\u5361"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8f
.end method
