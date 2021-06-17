.class public Lcom/tapjoy/sdk/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# static fields
.field public static notification_action:I

.field public static notification_action_tombstone:I

.field public static notification_template_custom_big:I

.field public static notification_template_icon_group:I

.field public static notification_template_part_chronometer:I

.field public static notification_template_part_time:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 150
    const v0, 0x7f0e0001

    sput v0, Lcom/tapjoy/sdk/R$layout;->notification_action:I

    .line 151
    const v0, 0x7f0e0002

    sput v0, Lcom/tapjoy/sdk/R$layout;->notification_action_tombstone:I

    .line 152
    const v0, 0x7f0e0003

    sput v0, Lcom/tapjoy/sdk/R$layout;->notification_template_custom_big:I

    .line 153
    const v0, 0x7f0e0004

    sput v0, Lcom/tapjoy/sdk/R$layout;->notification_template_icon_group:I

    .line 154
    const v0, 0x7f0e0005

    sput v0, Lcom/tapjoy/sdk/R$layout;->notification_template_part_chronometer:I

    .line 155
    const v0, 0x7f0e0006

    sput v0, Lcom/tapjoy/sdk/R$layout;->notification_template_part_time:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
