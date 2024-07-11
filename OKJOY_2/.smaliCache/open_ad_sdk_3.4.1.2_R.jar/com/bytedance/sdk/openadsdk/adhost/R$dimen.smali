.class public Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/adhost/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dimen"
.end annotation


# static fields
.field public static tt_video_container_maxheight:I

.field public static tt_video_container_minheight:I

.field public static tt_video_cover_padding_horizon:I

.field public static tt_video_cover_padding_vertical:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const/high16 v0, 0x7f070000

    sput v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_container_maxheight:I

    .line 84
    const v0, 0x7f070001

    sput v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_container_minheight:I

    .line 85
    const v0, 0x7f070002

    sput v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_cover_padding_horizon:I

    .line 86
    const v0, 0x7f070003

    sput v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_cover_padding_vertical:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
