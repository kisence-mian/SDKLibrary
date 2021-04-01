.class Lcom/tencent/smtt/utils/j$h;
.super Lcom/tencent/smtt/utils/j$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/utils/j$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-wide v0, p0, Lcom/tencent/smtt/utils/j$h;->d:J

    long-to-int v0, v0

    return v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/smtt/utils/j$h;->c:J

    return-wide v0
.end method
