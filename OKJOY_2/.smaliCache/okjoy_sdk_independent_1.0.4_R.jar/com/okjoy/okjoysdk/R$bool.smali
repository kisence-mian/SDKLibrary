.class public Lcom/okjoy/okjoysdk/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/R;
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

.field public static mtrl_btn_textappearance_all_caps:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 780
    const/4 v0, 0x0

    sput v0, Lcom/okjoy/okjoysdk/R$bool;->abc_action_bar_embed_tabs:I

    .line 781
    sput v0, Lcom/okjoy/okjoysdk/R$bool;->abc_allow_stacked_button_bar:I

    .line 782
    sput v0, Lcom/okjoy/okjoysdk/R$bool;->abc_config_actionMenuItemAllCaps:I

    .line 783
    sput v0, Lcom/okjoy/okjoysdk/R$bool;->abc_config_closeDialogWhenTouchOutside:I

    .line 784
    sput v0, Lcom/okjoy/okjoysdk/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 785
    sput v0, Lcom/okjoy/okjoysdk/R$bool;->mtrl_btn_textappearance_all_caps:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
