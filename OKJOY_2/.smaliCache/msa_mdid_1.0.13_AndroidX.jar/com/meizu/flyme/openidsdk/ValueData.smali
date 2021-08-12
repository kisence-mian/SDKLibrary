.class public Lcom/meizu/flyme/openidsdk/ValueData;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/flyme/openidsdk/ValueData;->a:Ljava/lang/String;

    iput p2, p0, Lcom/meizu/flyme/openidsdk/ValueData;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x5265c00

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/meizu/flyme/openidsdk/ValueData;->c:J

    return-void
.end method


# virtual methods
.method public native toString()Ljava/lang/String;
.end method
