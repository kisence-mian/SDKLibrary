.class Lcom/JoyFramework/wight/recyclerview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;

.field final synthetic b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/a;->b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;

    iput-object p2, p0, Lcom/JoyFramework/wight/recyclerview/a;->a:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/a;->b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;

    iget-object v0, v0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;->b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;

    iget-object v0, v0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->onItemClickListener:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;

    if-eqz v0, :cond_17

    .line 67
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/a;->b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;

    iget-object v0, v0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;->b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;

    iget-object v0, v0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->onItemClickListener:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/a;->b:Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;

    invoke-virtual {v1}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 69
    :cond_17
    return-void
.end method
