.class public Lcom/okjoy/okjoysdk/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "raw"
.end annotation


# static fields
.field public static ysf_audio_end_tip:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4298
    const/4 v0, 0x0

    sput v0, Lcom/okjoy/okjoysdk/R$raw;->ysf_audio_end_tip:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
