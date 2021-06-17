.class final Lcom/umeng/commonsdk/stateless/d$4;
.super Ljava/lang/Object;
.source "UMSLUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 8

    .line 405
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    .line 406
    const/4 p1, -0x1

    return p1

    .line 407
    :cond_12
    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_24

    .line 408
    const/4 p1, 0x0

    return p1

    .line 410
    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 403
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/d$4;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
