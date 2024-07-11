.class public final Lcom/tapjoy/internal/cy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tapjoy/internal/cx;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/cx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    return-void
.end method

.method public static a(F)V
    .registers 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_c

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media volume"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
