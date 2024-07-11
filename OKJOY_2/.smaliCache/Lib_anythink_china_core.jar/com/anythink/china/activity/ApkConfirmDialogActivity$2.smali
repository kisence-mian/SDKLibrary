.class final Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;
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

    .line 31
    iput-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 34
    invoke-static {}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 35
    invoke-static {}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    :cond_d
    iget-object p1, p0, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;->a:Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-virtual {p1}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->finish()V

    .line 38
    return-void
.end method
