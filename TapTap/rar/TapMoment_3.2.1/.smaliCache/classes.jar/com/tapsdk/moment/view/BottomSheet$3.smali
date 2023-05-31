.class Lcom/tapsdk/moment/view/BottomSheet$3;
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


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/BottomSheet;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/BottomSheet;

    .line 135
    iput-object p1, p0, Lcom/tapsdk/moment/view/BottomSheet$3;->this$0:Lcom/tapsdk/moment/view/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet$3;->this$0:Lcom/tapsdk/moment/view/BottomSheet;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/BottomSheet;->dismiss()V

    .line 139
    return-void
.end method
