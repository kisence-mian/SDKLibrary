.class public Lcom/bytedance/sdk/openadsdk/adhost/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/adhost/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "integer"
.end annotation


# static fields
.field public static tt_video_progress_max:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 461
    const/high16 v0, 0x7f090000

    sput v0, Lcom/bytedance/sdk/openadsdk/adhost/R$integer;->tt_video_progress_max:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
