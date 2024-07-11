.class final Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/activity/ApkConfirmDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;


# direct methods
.method constructor <init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    iget-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-virtual {p1}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->finish()V

    .line 45
    return-void
.end method
