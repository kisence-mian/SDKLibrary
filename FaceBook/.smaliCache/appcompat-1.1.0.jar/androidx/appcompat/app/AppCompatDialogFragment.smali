.class public Landroidx/appcompat/app/AppCompatDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    new-instance v0, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    .line 50
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v0, :cond_19

    .line 52
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatDialog;

    .line 53
    .local v0, "acd":Landroidx/appcompat/app/AppCompatDialog;
    packed-switch p2, :pswitch_data_1e

    goto :goto_18

    .line 55
    :pswitch_b
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 61
    :pswitch_14
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 63
    .end local v0    # "acd":Landroidx/appcompat/app/AppCompatDialog;
    :goto_18
    goto :goto_1c

    .line 65
    :cond_19
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 67
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_b
    .end packed-switch
.end method
