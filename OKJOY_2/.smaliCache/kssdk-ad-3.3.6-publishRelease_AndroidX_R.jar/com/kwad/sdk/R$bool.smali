.class public Lcom/kwad/sdk/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_embed_tabs:I

.field public static abc_allow_stacked_button_bar:I

.field public static abc_config_actionMenuItemAllCaps:I

.field public static abc_config_closeDialogWhenTouchOutside:I

.field public static abc_config_showMenuShortcutsWhenKeyboardPresent:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 284
    const v0, 0x7f050001

    sput v0, Lcom/kwad/sdk/R$bool;->abc_action_bar_embed_tabs:I

    .line 285
    const v0, 0x7f050002

    sput v0, Lcom/kwad/sdk/R$bool;->abc_allow_stacked_button_bar:I

    .line 286
    const v0, 0x7f050003

    sput v0, Lcom/kwad/sdk/R$bool;->abc_config_actionMenuItemAllCaps:I

    .line 287
    const v0, 0x7f050004

    sput v0, Lcom/kwad/sdk/R$bool;->abc_config_closeDialogWhenTouchOutside:I

    .line 288
    const v0, 0x7f050005

    sput v0, Lcom/kwad/sdk/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
