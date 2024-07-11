.class public Landroidx/appcompat/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_embed_tabs:I

.field public static abc_allow_stacked_button_bar:I

.field public static abc_config_actionMenuItemAllCaps:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 317
    const v0, 0x7f050001

    sput v0, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    .line 318
    const v0, 0x7f050002

    sput v0, Landroidx/appcompat/R$bool;->abc_allow_stacked_button_bar:I

    .line 319
    const v0, 0x7f050003

    sput v0, Landroidx/appcompat/R$bool;->abc_config_actionMenuItemAllCaps:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
