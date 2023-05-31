.class Lcom/tapsdk/moment/view/Alert$1;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

.field final synthetic val$cancelable:Z


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/Alert;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/Alert;

    .line 96
    iput-object p1, p0, Lcom/tapsdk/moment/view/Alert$1;->this$0:Lcom/tapsdk/moment/view/Alert;

    iput-boolean p2, p0, Lcom/tapsdk/moment/view/Alert$1;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 99
    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    .line 100
    iget-boolean v0, p0, Lcom/tapsdk/moment/view/Alert$1;->val$cancelable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 102
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
