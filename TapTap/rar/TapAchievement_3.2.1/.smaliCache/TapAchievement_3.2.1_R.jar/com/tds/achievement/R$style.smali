.class public Lcom/tds/achievement/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/R;
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

    .line 110
    const/4 v0, 0x0

    sput v0, Lcom/tds/achievement/R$style;->tds_common_DialogTheme:I

    .line 111
    sput v0, Lcom/tds/achievement/R$style;->tds_common_animation_slideSheetDialog_landscape:I

    .line 112
    sput v0, Lcom/tds/achievement/R$style;->tds_common_animation_slideSheetDialog_portrait:I

    .line 113
    sput v0, Lcom/tds/achievement/R$style;->tds_common_permission_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
