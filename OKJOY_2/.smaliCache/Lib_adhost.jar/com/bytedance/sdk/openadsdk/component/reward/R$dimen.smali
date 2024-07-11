.class public final Lcom/bytedance/sdk/openadsdk/component/reward/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    .line 69
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_container_maxheight:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/reward/R$dimen;->tt_video_container_maxheight:I

    .line 70
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_container_minheight:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/reward/R$dimen;->tt_video_container_minheight:I

    .line 71
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_cover_padding_horizon:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/reward/R$dimen;->tt_video_cover_padding_horizon:I

    .line 72
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_cover_padding_vertical:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/reward/R$dimen;->tt_video_cover_padding_vertical:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
