.class public Lcom/tds/tapdb/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/tapdb/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "style"
.end annotation


# static fields
.field public static tds_common_DialogTheme:I

.field public static tds_common_animation_slideSheetDialog_landscape:I

.field public static tds_common_animation_slideSheetDialog_portrait:I

.field public static tds_common_permission_dialog:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/tds/tapdb/R$style;->tds_common_DialogTheme:I

    .line 66
    sput v0, Lcom/tds/tapdb/R$style;->tds_common_animation_slideSheetDialog_landscape:I

    .line 67
    sput v0, Lcom/tds/tapdb/R$style;->tds_common_animation_slideSheetDialog_portrait:I

    .line 68
    sput v0, Lcom/tds/tapdb/R$style;->tds_common_permission_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
