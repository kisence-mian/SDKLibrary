.class Lcom/tds/achievement/ui/UIManager$2;
.super Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/UIManager;->showSheet(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/UIManager;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/UIManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/ui/UIManager;

    .line 126
    iput-object p1, p0, Lcom/tds/achievement/ui/UIManager$2;->this$0:Lcom/tds/achievement/ui/UIManager;

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 5
    .param p1, "position"    # I

    .line 129
    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager$2;->this$0:Lcom/tds/achievement/ui/UIManager;

    # getter for: Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;
    invoke-static {v0}, Lcom/tds/achievement/ui/UIManager;->access$100(Lcom/tds/achievement/ui/UIManager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager$2;->this$0:Lcom/tds/achievement/ui/UIManager;

    # getter for: Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;
    invoke-static {v0}, Lcom/tds/achievement/ui/UIManager;->access$100(Lcom/tds/achievement/ui/UIManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_29

    .line 130
    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager$2;->this$0:Lcom/tds/achievement/ui/UIManager;

    # getter for: Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;
    invoke-static {v0}, Lcom/tds/achievement/ui/UIManager;->access$100(Lcom/tds/achievement/ui/UIManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/achievement/ui/ListItemWrapper;

    iget v0, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemType:I

    packed-switch v0, :pswitch_data_2e

    .line 135
    :pswitch_27
    return v2

    .line 133
    :pswitch_28
    return v1

    .line 138
    :cond_29
    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method
