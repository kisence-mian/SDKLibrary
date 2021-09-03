.class public Lcom/tds/common/widgets/HoloThemeHelper;
.super Ljava/lang/Object;
.source "HoloThemeHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixHoloDialogBlueLine(Landroid/app/Dialog;)V
    .registers 5
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/titleDivider"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 21
    .local v1, "dividerID":I
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 22
    .local v2, "divider":Landroid/view/View;
    if-eqz v2, :cond_19

    .line 23
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 27
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dividerID":I
    .end local v2    # "divider":Landroid/view/View;
    :cond_19
    goto :goto_1e

    .line 25
    :catch_1a
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method
