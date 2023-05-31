.class public Lcom/meizu/flyme/openidsdk/ValueData;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public b:I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public c:J
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/flyme/openidsdk/ValueData;->a:Ljava/lang/String;

    iput p2, p0, Lcom/meizu/flyme/openidsdk/ValueData;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/flyme/openidsdk/ValueData;->c:J

    return-void
.end method


# virtual methods
.method public native toString()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
