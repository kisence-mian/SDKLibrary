.class public Lcom/qq/e/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "anim"
.end annotation


# static fields
.field public static slide_right_in:I

.field public static slide_up:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const v0, 0x7f010001

    sput v0, Lcom/qq/e/R$anim;->slide_right_in:I

    .line 8
    const v0, 0x7f010002

    sput v0, Lcom/qq/e/R$anim;->slide_up:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
