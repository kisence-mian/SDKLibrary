.class public Lcom/tapsdk/moment/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "style"
.end annotation


# static fields
.field public static AlertDialogStyle:I

.field public static BottomSheetStyle:I

.field public static Theme_Tap_Light_NoActionBar:I

.field public static dialog:I

.field public static dialog_fragment_animation:I

.field public static tds_common_DialogTheme:I

.field public static tds_common_animation_slideSheetDialog_landscape:I

.field public static tds_common_animation_slideSheetDialog_portrait:I

.field public static tds_common_permission_dialog:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    const/4 v0, 0x0

    sput v0, Lcom/tapsdk/moment/R$style;->AlertDialogStyle:I

    .line 112
    sput v0, Lcom/tapsdk/moment/R$style;->BottomSheetStyle:I

    .line 113
    sput v0, Lcom/tapsdk/moment/R$style;->Theme_Tap_Light_NoActionBar:I

    .line 114
    sput v0, Lcom/tapsdk/moment/R$style;->dialog:I

    .line 115
    sput v0, Lcom/tapsdk/moment/R$style;->dialog_fragment_animation:I

    .line 116
    sput v0, Lcom/tapsdk/moment/R$style;->tds_common_DialogTheme:I

    .line 117
    sput v0, Lcom/tapsdk/moment/R$style;->tds_common_animation_slideSheetDialog_landscape:I

    .line 118
    sput v0, Lcom/tapsdk/moment/R$style;->tds_common_animation_slideSheetDialog_portrait:I

    .line 119
    sput v0, Lcom/tapsdk/moment/R$style;->tds_common_permission_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
