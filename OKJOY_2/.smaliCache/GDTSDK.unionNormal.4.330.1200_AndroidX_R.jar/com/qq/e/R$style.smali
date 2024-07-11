.class public Lcom/qq/e/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "style"
.end annotation


# static fields
.field public static DialogAnimationRight:I

.field public static DialogAnimationUp:I

.field public static DialogFullScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const v0, 0x7f160001

    sput v0, Lcom/qq/e/R$style;->DialogAnimationRight:I

    .line 50
    const v0, 0x7f160002

    sput v0, Lcom/qq/e/R$style;->DialogAnimationUp:I

    .line 51
    const v0, 0x7f160003

    sput v0, Lcom/qq/e/R$style;->DialogFullScreen:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
