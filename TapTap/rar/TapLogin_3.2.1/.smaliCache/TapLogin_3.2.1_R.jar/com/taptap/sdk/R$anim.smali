.class public Lcom/taptap/sdk/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "anim"
.end annotation


# static fields
.field public static tds_common_anim_loading:I

.field public static tds_common_slide_sheet_land_slide_in:I

.field public static tds_common_slide_sheet_land_slide_out:I

.field public static tds_common_slide_sheet_port_slide_in:I

.field public static tds_common_slide_sheet_port_slide_out:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/taptap/sdk/R$anim;->tds_common_anim_loading:I

    .line 8
    sput v0, Lcom/taptap/sdk/R$anim;->tds_common_slide_sheet_land_slide_in:I

    .line 9
    sput v0, Lcom/taptap/sdk/R$anim;->tds_common_slide_sheet_land_slide_out:I

    .line 10
    sput v0, Lcom/taptap/sdk/R$anim;->tds_common_slide_sheet_port_slide_in:I

    .line 11
    sput v0, Lcom/taptap/sdk/R$anim;->tds_common_slide_sheet_port_slide_out:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
