.class public Lcom/kwad/sdk/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "anim"
.end annotation


# static fields
.field public static abc_fade_in:I

.field public static abc_fade_out:I

.field public static abc_grow_fade_in_from_bottom:I

.field public static abc_popup_enter:I

.field public static abc_popup_exit:I

.field public static abc_shrink_fade_out_from_bottom:I

.field public static abc_slide_in_bottom:I

.field public static abc_slide_in_top:I

.field public static abc_slide_out_bottom:I

.field public static abc_slide_out_top:I

.field public static tooltip_enter:I

.field public static tooltip_exit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const v0, 0x7f010001

    sput v0, Lcom/kwad/sdk/R$anim;->abc_fade_in:I

    .line 8
    const v0, 0x7f010002

    sput v0, Lcom/kwad/sdk/R$anim;->abc_fade_out:I

    .line 9
    const v0, 0x7f010003

    sput v0, Lcom/kwad/sdk/R$anim;->abc_grow_fade_in_from_bottom:I

    .line 10
    const v0, 0x7f010004

    sput v0, Lcom/kwad/sdk/R$anim;->abc_popup_enter:I

    .line 11
    const v0, 0x7f010005

    sput v0, Lcom/kwad/sdk/R$anim;->abc_popup_exit:I

    .line 12
    const v0, 0x7f010006

    sput v0, Lcom/kwad/sdk/R$anim;->abc_shrink_fade_out_from_bottom:I

    .line 13
    const v0, 0x7f010007

    sput v0, Lcom/kwad/sdk/R$anim;->abc_slide_in_bottom:I

    .line 14
    const v0, 0x7f010008

    sput v0, Lcom/kwad/sdk/R$anim;->abc_slide_in_top:I

    .line 15
    const v0, 0x7f010009

    sput v0, Lcom/kwad/sdk/R$anim;->abc_slide_out_bottom:I

    .line 16
    const v0, 0x7f01000a

    sput v0, Lcom/kwad/sdk/R$anim;->abc_slide_out_top:I

    .line 17
    const v0, 0x7f01000b

    sput v0, Lcom/kwad/sdk/R$anim;->tooltip_enter:I

    .line 18
    const v0, 0x7f01000c

    sput v0, Lcom/kwad/sdk/R$anim;->tooltip_exit:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
