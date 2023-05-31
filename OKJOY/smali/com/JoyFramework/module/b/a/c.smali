.class public Lcom/JoyFramework/module/b/a/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/b/a/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/ae;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/JoyFramework/remote/bean/ae;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    .line 52
    if-nez p2, :cond_69

    .line 53
    new-instance v1, Lcom/JoyFramework/module/b/a/c$a;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/b/a/c$a;-><init>(Lcom/JoyFramework/module/b/a/c;)V

    .line 54
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/a/c;->c:Landroid/view/LayoutInflater;

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->c:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_item_paytype"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->a:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->b:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v2, "select"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_59
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->b()I

    move-result v0

    .line 68
    packed-switch v0, :pswitch_data_1d0

    .line 110
    :goto_68
    return-object p2

    .line 64
    :cond_69
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/module/b/a/c$a;

    move-object v1, v0

    goto :goto_59

    .line 70
    :pswitch_71
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/c$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->b:Landroid/widget/TextView;

    const-string v2, "\u63a8\u8350\u6709\u652f\u4ed8\u5b9d\u8d26\u6237\u7684\u7528\u6237\u4f7f\u7528"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 73
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_on"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_68

    .line 75
    :cond_af
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_off"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_68

    .line 80
    :pswitch_c7
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/c$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->b:Landroid/widget/TextView;

    const-string v2, "\u63a8\u8350\u5b89\u88c5\u5fae\u4fe15.0\u53ca\u4ee5\u4e0a\u7248\u672c\u7684\u7528\u6237\u4f7f\u7528"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 83
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_on"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_68

    .line 85
    :cond_106
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_off"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_68

    .line 90
    :pswitch_11f
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/c$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->b:Landroid/widget/TextView;

    const-string v2, "\u63a8\u8350\u4f7f\u7528\u94f6\u884c\u5361\u7684\u7528\u6237\u4f7f\u7528"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 93
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_on"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_68

    .line 95
    :cond_15e
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_off"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_68

    .line 100
    :pswitch_177
    iget-object v2, v1, Lcom/JoyFramework/module/b/a/c$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->b:Landroid/widget/TextView;

    const-string v2, "\u63a8\u8350\u7528\u6237\u4f7f\u7528"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ae;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 103
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_on"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_68

    .line 105
    :cond_1b6
    iget-object v0, v1, Lcom/JoyFramework/module/b/a/c$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/a/c;->b:Landroid/content/Context;

    const-string v3, "joy_select_off"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_68

    .line 68
    nop

    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_71
        :pswitch_c7
        :pswitch_11f
        :pswitch_177
    .end packed-switch
.end method
