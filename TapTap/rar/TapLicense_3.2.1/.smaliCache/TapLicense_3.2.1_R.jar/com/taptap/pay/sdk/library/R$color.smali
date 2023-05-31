.class public Lcom/taptap/pay/sdk/library/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "color"
.end annotation


# static fields
.field public static color_tap:I

.field public static color_title:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/taptap/pay/sdk/library/R$color;->color_tap:I

    .line 17
    sput v0, Lcom/taptap/pay/sdk/library/R$color;->color_title:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
