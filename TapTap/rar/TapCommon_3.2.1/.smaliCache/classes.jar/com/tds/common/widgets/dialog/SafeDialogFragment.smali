.class public Lcom/tds/common/widgets/dialog/SafeDialogFragment;
.super Landroid/app/DialogFragment;
.source "SafeDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 10
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 13
    goto :goto_8

    .line 11
    :catch_4
    move-exception v0

    .line 12
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method
