.class public Lcom/taptap/pay/sdk/library/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/R;
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

    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/taptap/pay/sdk/library/R$style;->tds_common_DialogTheme:I

    .line 104
    sput v0, Lcom/taptap/pay/sdk/library/R$style;->tds_common_animation_slideSheetDialog_landscape:I

    .line 105
    sput v0, Lcom/taptap/pay/sdk/library/R$style;->tds_common_animation_slideSheetDialog_portrait:I

    .line 106
    sput v0, Lcom/taptap/pay/sdk/library/R$style;->tds_common_permission_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
