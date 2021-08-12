.class public Lcom/bytedance/sdk/openadsdk/adhost/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/adhost/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "anim"
.end annotation


# static fields
.field public static tt_dislike_animation_dismiss:I

.field public static tt_dislike_animation_show:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/high16 v0, 0x7f040000

    sput v0, Lcom/bytedance/sdk/openadsdk/adhost/R$anim;->tt_dislike_animation_dismiss:I

    .line 8
    const v0, 0x7f040001

    sput v0, Lcom/bytedance/sdk/openadsdk/adhost/R$anim;->tt_dislike_animation_show:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
