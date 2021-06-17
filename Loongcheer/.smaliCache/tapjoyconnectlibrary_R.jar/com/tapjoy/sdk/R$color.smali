.class public Lcom/tapjoy/sdk/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "color"
.end annotation


# static fields
.field public static notification_action_color_filter:I

.field public static notification_icon_bg_color:I

.field public static ripple_material_light:I

.field public static secondary_text_default_material_light:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const v0, 0x7f060001

    sput v0, Lcom/tapjoy/sdk/R$color;->notification_action_color_filter:I

    .line 33
    const v0, 0x7f060002

    sput v0, Lcom/tapjoy/sdk/R$color;->notification_icon_bg_color:I

    .line 34
    const v0, 0x7f060003

    sput v0, Lcom/tapjoy/sdk/R$color;->ripple_material_light:I

    .line 35
    const v0, 0x7f060004

    sput v0, Lcom/tapjoy/sdk/R$color;->secondary_text_default_material_light:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
