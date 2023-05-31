.class Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 60
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;->b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;

    .line 61
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_item_more_game_img"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;->a:Landroid/widget/ImageView;

    .line 63
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/a;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/wight/recyclerview/a;-><init>(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
