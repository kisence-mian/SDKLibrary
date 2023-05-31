.class public Lcom/JoyFramework/module/b/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/b/a/a$a;,
        Lcom/JoyFramework/module/b/a/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/ad;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/JoyFramework/module/b/a/a$a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/b/a/a;)Lcom/JoyFramework/module/b/a/a$a;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->d:Lcom/JoyFramework/module/b/a/a$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/b/a/a$a;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/a;->d:Lcom/JoyFramework/module/b/a/a$a;

    .line 113
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

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
    .line 54
    if-nez p2, :cond_e4

    .line 55
    new-instance v1, Lcom/JoyFramework/module/b/a/a$b;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/b/a/a$b;-><init>(Lcom/JoyFramework/module/b/a/a;)V

    .line 56
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/a/a;->c:Landroid/view/LayoutInflater;

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->c:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    const-string v3, "joy_item_payrecord"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    const-string v2, "amount"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/a$b;->a:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    const-string v2, "status"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/a$b;->b:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    const-string v2, "orderId"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/a$b;->c:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    const-string v2, "time"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/a$b;->d:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    const-string v2, "swipe_menu_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/a$b;->e:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    const-string v2, "copyOrderId"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/a$b;->f:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_89
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/a$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ad;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ad;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const-string v2, ""

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ad;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ad;->d()I

    move-result v0

    if-nez v0, :cond_ec

    .line 75
    const-string v0, "joy_pay_success"

    .line 79
    :goto_ac
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/a$b;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/JoyFramework/module/b/a/a;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/a$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ad;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ad;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/a$b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ad;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ad;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/a$b;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/JoyFramework/module/b/a/b;

    invoke-direct {v2, p0, p1, v1}, Lcom/JoyFramework/module/b/a/b;-><init>(Lcom/JoyFramework/module/b/a/a;ILcom/JoyFramework/module/b/a/a$b;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object p2

    .line 70
    :cond_e4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/module/b/a/a$b;

    move-object v1, v0

    goto :goto_89

    .line 76
    :cond_ec
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ad;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ad;->d()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_fe

    .line 77
    const-string v0, "joy_pay_fail"

    goto :goto_ac

    :cond_fe
    move-object v0, v2

    goto :goto_ac
.end method
