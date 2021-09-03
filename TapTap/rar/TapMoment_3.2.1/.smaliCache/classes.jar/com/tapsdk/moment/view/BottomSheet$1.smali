.class Lcom/tapsdk/moment/view/BottomSheet$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/BottomSheet;->settingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/BottomSheet;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/BottomSheet;Landroid/view/Window;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/BottomSheet;

    .line 103
    iput-object p1, p0, Lcom/tapsdk/moment/view/BottomSheet$1;->this$0:Lcom/tapsdk/moment/view/BottomSheet;

    iput-object p2, p0, Lcom/tapsdk/moment/view/BottomSheet$1;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 106
    iget-object v0, p0, Lcom/tapsdk/moment/view/BottomSheet$1;->val$window:Landroid/view/Window;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 107
    return-void
.end method
