.class public Lcom/loongcheer/admobsdk/R$font;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "font"
.end annotation


# static fields
.field public static roboto_medium_numbers:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1595
    const/4 v0, 0x0

    sput v0, Lcom/loongcheer/admobsdk/R$font;->roboto_medium_numbers:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
