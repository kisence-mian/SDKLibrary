.class public Lcom/okjoy/okjoysdk/R$plurals;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "plurals"
.end annotation


# static fields
.field public static error_over_count:I

.field public static mtrl_badge_content_description:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4292
    const/4 v0, 0x0

    sput v0, Lcom/okjoy/okjoysdk/R$plurals;->error_over_count:I

    .line 4293
    sput v0, Lcom/okjoy/okjoysdk/R$plurals;->mtrl_badge_content_description:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
