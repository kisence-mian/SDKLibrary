.class Lcom/tencent/smtt/utils/j$b;
.super Lcom/tencent/smtt/utils/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field k:I

.field l:I

.field m:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/utils/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()J
    .registers 3

    iget v0, p0, Lcom/tencent/smtt/utils/j$b;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method b()J
    .registers 3

    iget v0, p0, Lcom/tencent/smtt/utils/j$b;->l:I

    int-to-long v0, v0

    return-wide v0
.end method
