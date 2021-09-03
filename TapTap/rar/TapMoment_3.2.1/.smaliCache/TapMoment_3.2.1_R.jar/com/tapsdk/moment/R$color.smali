.class public Lcom/tapsdk/moment/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "color"
.end annotation


# static fields
.field public static tapMomentBlack:I

.field public static ttos_moment_black:I

.field public static ttos_moment_font:I

.field public static ttos_moment_primary_color:I

.field public static ttos_moment_white:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/tapsdk/moment/R$color;->tapMomentBlack:I

    .line 19
    sput v0, Lcom/tapsdk/moment/R$color;->ttos_moment_black:I

    .line 20
    sput v0, Lcom/tapsdk/moment/R$color;->ttos_moment_font:I

    .line 21
    sput v0, Lcom/tapsdk/moment/R$color;->ttos_moment_primary_color:I

    .line 22
    sput v0, Lcom/tapsdk/moment/R$color;->ttos_moment_white:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
