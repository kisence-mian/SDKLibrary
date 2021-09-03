.class Lcom/tapsdk/moment/view/Alert$2;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/Alert;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/Alert;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/Alert;Landroid/view/Window;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/Alert;

    .line 109
    iput-object p1, p0, Lcom/tapsdk/moment/view/Alert$2;->this$0:Lcom/tapsdk/moment/view/Alert;

    iput-object p2, p0, Lcom/tapsdk/moment/view/Alert$2;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 112
    iget-object v0, p0, Lcom/tapsdk/moment/view/Alert$2;->val$window:Landroid/view/Window;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 113
    return-void
.end method
