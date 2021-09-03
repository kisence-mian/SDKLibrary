.class Lcom/tapsdk/moment/view/BottomSheet$2;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/BottomSheet;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/BottomSheet;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$tempIndex:I


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/BottomSheet;ILjava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/BottomSheet;

    .line 122
    iput-object p1, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->this$0:Lcom/tapsdk/moment/view/BottomSheet;

    iput p2, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->val$tempIndex:I

    iput-object p3, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->this$0:Lcom/tapsdk/moment/view/BottomSheet;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/BottomSheet;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->this$0:Lcom/tapsdk/moment/view/BottomSheet;

    # getter for: Lcom/tapsdk/moment/view/BottomSheet;->mListener:Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;
    invoke-static {v0}, Lcom/tapsdk/moment/view/BottomSheet;->access$000(Lcom/tapsdk/moment/view/BottomSheet;)Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 127
    iget-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->this$0:Lcom/tapsdk/moment/view/BottomSheet;

    # getter for: Lcom/tapsdk/moment/view/BottomSheet;->mListener:Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;
    invoke-static {v0}, Lcom/tapsdk/moment/view/BottomSheet;->access$000(Lcom/tapsdk/moment/view/BottomSheet;)Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->val$tempIndex:I

    iget-object v2, p0, Lcom/tapsdk/moment/view/BottomSheet$2;->val$list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;->onClick(ILjava/lang/String;)V

    .line 129
    :cond_20
    return-void
.end method
