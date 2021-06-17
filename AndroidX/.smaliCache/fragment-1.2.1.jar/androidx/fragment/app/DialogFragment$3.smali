.class Landroidx/fragment/app/DialogFragment$3;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DialogFragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/fragment/app/DialogFragment;

    .line 112
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment$3;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 115
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment$3;->this$0:Landroidx/fragment/app/DialogFragment;

    iget-object v0, v0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment$3;->this$0:Landroidx/fragment/app/DialogFragment;

    iget-object v1, v0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 118
    :cond_d
    return-void
.end method
